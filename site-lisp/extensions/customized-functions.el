(defun move-to-middle-of-line ()
  (interactive)
  (let* ((begin (line-beginning-position))
         (end (line-end-position))
         (middle (/ (+ end begin) 2)))
    (goto-char middle)))
(defun org-insert-now ()
  "insert current date-time to current cursor."
  (interactive)
  (org-insert-heading-respect-content)
  (insert (format-time-string "<%Y-%m-%d %a %T:%3N> ") (current-buffer)))
(defun org-insert-now-second ()
  "insert current date-time to current cursor."
  (interactive)
  (org-insert-heading-respect-content)
  (insert (format-time-string "<%Y-%m-%d %a %T> ") (current-buffer)))
(defun insert-now ()
  "insert current date-time to current cursor."
  (interactive)
  (insert (format-time-string "<%Y-%m-%d %a %T:%3N>") (current-buffer)))
(defun insert-now-second ()
  "insert current date-time to current cursor."
  (interactive)
  (insert (format-time-string "<%Y-%m-%d %a %T>") (current-buffer)))
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

(provide 'customized-functions)
