(require 'magit)
(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
	       "~/.emacs.d/site-lisp/extensions/magit/Documentation/"))
;; gitman info manual
;;http://magit.vc/manual/magit/How-to-install-the-gitman-info-manual_003f.html#How-to-install-the-gitman-info-manual_003f
;; (defadvice Info-follow-nearest-node (around gitman activate)
;;   "When encountering a cross reference to the `gitman' info
;; manual, then instead of following that cross reference show
;; the actual manpage using the function `man'."
;;   (let ((node (Info-get-token
;; 	       (point) "\\*note[ \n\t]+"
;; 	       "\\*note[ \n\t]+\\([^:]*\\):\\(:\\|[ \n\t]*(\\)?")))
;;     (if (and node (string-match "^(gitman)\\(.+\\)" node))
;; 	(progn (require 'man)
;; 	       (man (match-string 1 node)))
;;       ad-do-it)))

;; show author, see https://emacs.stackexchange.com/questions/53341/how-to-show-commit-authors-in-magit-section-recent-commits
(setq magit-toggle-margin t)
(provide 'init-magit)
