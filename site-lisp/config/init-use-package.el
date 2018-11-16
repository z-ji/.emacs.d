(bind-key* "<C-[>" 'backward-sexp)
(bind-key* "<C-]>" 'forward-sexp)
(bind-key* "<C-return>" 'org-insert-now-second)
(bind-key* "<C-M-return>" 'org-insert-now)
(bind-key* "C-/" 'comment-line)
(bind-key* "C-?" 'comment-or-uncomment-region)

;;;TODO only in org-mode
(defun org-timer-start-keymap-hint()
  "org-timer-start keymap has changed to C-c C-x C-0"
  (interactive)
  (message "keymap of org-timer-start has changed to C-c C-x C-0"))
(bind-key* "C-c C-x 0" 'org-timer-start-keymap-hint)
(bind-key* "C-c C-x C-0" 'org-timer-start)
(bind-key* "C-c C--" 'org-toggle-heading)
(bind-key* "C-M-l" 'json-pretty-print)


;; using org bullets in org-mode
;; (use-package org-bullets
;;   :ensure t
;;   :config
;;   (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; markdown-mode
(use-package markdown-mode
  :ensure t
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(provide 'init-use-package)
