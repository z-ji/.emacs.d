(defun move-to-middle-of-line ()
  (interactive)
  (let* ((begin (line-beginning-position))
         (end (line-end-position))
         (middle (/ (+ end begin) 2)))
    (goto-char middle)))

;; insert current timestamp
(defun org-insert-current-timestamp ()
  "insert current date-time to current cursor."
  (interactive)
  (org-insert-heading-respect-content)
  (insert (format-time-string "<%Y-%m-%d %a %T:%3N> ") (current-buffer)))
(defun org-insert-current-timestamp-second ()
  "insert current date-time to current cursor."
  (interactive)
  (org-insert-heading-respect-content)
  (insert (format-time-string "<%Y-%m-%d %a %T> ") (current-buffer)))
(defun insert-current-timestamp ()
  "insert current date-time to current cursor."
  (interactive)
  (insert (format-time-string "<%Y-%m-%d %a %T:%3N>") (current-buffer)))
(defun insert-current-timestamp-second ()
  "insert current date-time to current cursor."
  (interactive)
  (insert (format-time-string "<%Y-%m-%d %a %T>") (current-buffer)))
;; insert current inactive timestamp
(defun org-insert-current-inactive-timestamp ()
  "insert current date-time to current cursor."
  (interactive)
  (org-insert-heading-respect-content)
  (insert (format-time-string "[%Y-%m-%d %a %T:%3N] ") (current-buffer)))
(defun org-insert-current-inactive-timestamp-second ()
  "insert current date-time to current cursor."
  (interactive)
  (org-insert-heading-respect-content)
  (insert (format-time-string "[%Y-%m-%d %a %T] ") (current-buffer)))
(defun insert-current-inactive-timestamp ()
  "insert current date-time to current cursor."
  (interactive)
  (insert (format-time-string "[%Y-%m-%d %a %T:%3N]") (current-buffer)))
(defun insert-current-inactive-timestamp-second ()
  "insert current date-time to current cursor."
  (interactive)
  (insert (format-time-string "[%Y-%m-%d %a %T]") (current-buffer)))

;;当前时间函数
(defun now-is ()
  "Display current time."
  (interactive)
  (message (format-time-string "Now is %Y-%m-%d %a %T")))
;; Ctrl-S-K delete line without kill
(defun delete-line ()
  (interactive)
  (delete-region
   (point)
   (save-excursion (move-end-of-line 1) (point)))
  (delete-char 1)
)
;;重定义C-W A-W 增加cut copy一行的功能
(defun cut-line-or-region ()
  "Cut the current line, or current text selection."
  (interactive)
  (if (use-region-p)
      (kill-region (region-beginning) (region-end))
    (kill-region (line-beginning-position) (line-beginning-position 2)) (message "cut-line-or-region")) )
(defun copy-line-or-region ()
  "Copy current line, or current text selection."
  (interactive)
  (if (use-region-p)
      (kill-ring-save (region-beginning) (region-end))
    (kill-ring-save (line-beginning-position) (line-beginning-position 2)) (message "copy-line-or-region")) )
;;kill-other-buffers
;;http://stackoverflow.com/questions/3417438/closing-all-other-buffers-in-emacs
(defun kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer
        (delq (current-buffer)
              (remove-if-not 'buffer-file-name (buffer-list)))))

;; customize functions to sort headlines , see https://emacs.stackexchange.com/questions/9585/org-how-to-sort-headings-by-todo-and-then-by-priority
(require 'cl)
(require 'dash)

(defun todo-to-int (todo)
    (first (-non-nil
            (mapcar (lambda (keywords)
                      (let ((todo-seq
                             (-map (lambda (x) (first (split-string  x "(")))
                                   (rest keywords))))
                        (cl-position-if (lambda (x) (string= x todo)) todo-seq)))
                    org-todo-keywords))))

(defun my/org-sort-key ()
  (let* ((todo-max (apply #'max (mapcar #'length org-todo-keywords)))
         (todo (org-entry-get (point) "TODO"))
         (todo-int (if todo (todo-to-int todo) todo-max))
         (priority (org-entry-get (point) "PRIORITY"))
         (priority-int (if priority (string-to-char priority) org-default-priority)))
    (format "%03d %03d" todo-int priority-int)
    ))

(defun my/org-sort-entries ()
  (interactive)
  (org-sort-entries nil ?f #'my/org-sort-key))

(defun insert-backquote-quote-by-pair ()
  "insert backquote quote by pair"
  (interactive)
  (xah-insert-bracket-pair "`" "`"))

(defun insert-single-quote-by-pair ()
  "insert single quote by pair"
  (interactive)
  (xah-insert-bracket-pair "'" "'"))

(provide 'customized-functions)
