(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-c\C-f" 'find-file-root)
;;(fullscreen)
(global-set-key [f11] 'fullscreen)
(global-set-key [f10] 'toggle-frame-maximized)
(global-set-key (kbd "C-S-k") 'delete-line);; Ctrl-K with no kill

(global-set-key (kbd "C-w") 'cut-line-or-region) ; cut
(global-set-key (kbd "M-w") 'copy-line-or-region) ; copy
;;放大缩小文本
(global-set-key (kbd"C--") 'text-scale-decrease)
(global-set-key (kbd"C-=") 'text-scale-increase)


;;(global-unset-key (kbd " C-SPC"))
;;make C-z do nothing
(global-unset-key (kbd "C-x C-z"));;unbound keys to suspend-frame
(global-set-key [(f5)] 'speedbar)
(global-set-key (kbd "C-z") 'undo)



;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key "\C-x\C-b" 'ibuffer)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
(global-set-key (kbd "C-h r") 'helm-info-emacs)
(provide 'init-key)
