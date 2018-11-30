;;; org-section-numbers.el --- Display natural section numbers -*- lexical-binding: t; -*-


;;; Header:

;; Copyright 2016, 2017 Marco Wahl

;; Version: 0.0.1
;; Author: Marco Wahl <marcowahlsoft@gmail.com>
;; Maintainer: Marco Wahl <marcowahlsoft@gmail.com>
;; Created: [2016-11-02 Wed 11:27]
;; Package-Requires: ((emacs "24"))
;; Keywords: outlines
;; URL: https://github.com/marcowahl/org-section-numbers

;; This file is not part of Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.


;;; Commentary:

;; This program offers a switch to blend in natural section numbering for
;; a given Org file.

;;  - Command `org-section-numbers-toggle' turns the numbering on or off.
;;  - The numbering is non intrusive i.e. it doesn't change the buffer content,
;;    only the buffer appearance.
;;  - When narrow is in effect then the numbering will affect only the
;;    visible part.

;; ** Shortcommings

;; For some configurations pertaining the Org headings the numbering
;; might come out poorly.


;;; Code:

(let (overlays it-s-on)
;;;###autoload
(defun org-section-numbers-toggle ()
  "Toggle section-numbers."
  (interactive)
  (unless (eq major-mode 'org-mode)
    (user-error (concat "org-section-numbers-toggle only works if"
                        " org-mode is the major mode.")))
  (if it-s-on
      (org-section-numbers-unravel)
    (org-section-numbers-establish))
  (setq it-s-on (not it-s-on)))

(defun org-section-numbers-establish ()
  "Place overlays with the numbering over the headline stars."
  (let ((orglevel-sectionnumber-path '((0 . 0))))
    (org-map-entries
     (lambda ()
       (let ((level (org-outline-level)))
         (cond
          ((< (caar orglevel-sectionnumber-path) level)
           (push (cons level 1) orglevel-sectionnumber-path))
          ((= (caar orglevel-sectionnumber-path) level)
           (incf (cdar orglevel-sectionnumber-path)))
          ((< level (caar orglevel-sectionnumber-path))
           (pop orglevel-sectionnumber-path)
           (while (< level (caar orglevel-sectionnumber-path))
             (pop orglevel-sectionnumber-path))
           (incf (cdar orglevel-sectionnumber-path)))
          (t (error (concat
                     "Error: "
                     "unexpected program flow.  "
                     "Please report."))))
         (push (make-overlay (point) (1- (+ (point) level))) overlays)
         (overlay-put (car overlays) 'invisible t)
         (push (make-overlay (1- (+ (point) level))
                             (+ (point) level))
               overlays)
         (overlay-put (car overlays)
                      'display
                      (mapconcat
                       (lambda (x) (number-to-string (cdr x)))
                       (cdr (reverse orglevel-sectionnumber-path)) "."))))
     t nil)))

(defun org-section-numbers-unravel ()
  "Remove all overlays pertaining to the numbering."
  (dolist (ol overlays)
    (delete-overlay ol))
  (setf overlays nil)))


(provide 'org-section-numbers)


;;; org-section-numbers.el ends here
