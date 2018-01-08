(bind-key* "<C-return>" 'org-insert-now)
(bind-key* "<C-M-return>" 'org-insert-now-second)
(bind-key* "C-/" 'comment-or-uncomment-region)

;;;TODO only in org-mode
(defun org-timer-start-keymap-hint()
  "org-timer-start keymap has changed to C-c C-x C-0"
  (interactive)
  (message "keymap of org-timer-start has changed to C-c C-x C-0"))
(bind-key* "C-c C-x 0" 'org-timer-start-keymap-hint)
(bind-key* "C-c C-x C-0" 'org-timer-start)
(provide 'init-use-package)
