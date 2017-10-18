(global-set-key (kbd "C-c m") 'move-to-middle-of-line)
(global-set-key (kbd "C-x C-j") 'dired-jump)

(global-set-key (kbd "C-c C-.") 'insert-now)
(global-set-key (kbd "C-SPC") 'nil)
;;elfeed
(global-set-key (kbd "C-x w") 'elfeed)
;;Org Mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cs" 'org-show-subtree)
;;Find file as root
(global-set-key (kbd "C-x C-S-f") 'find-file-root)
;;(fullscreen)
(global-set-key [f9] 'toggle-frame-fullscreen)
;;use default <M-f10> to toggle-frame-maximized
;;(global-set-key [f10] 'toggle-frame-maximized)
(global-set-key (kbd "C-S-k") 'delete-line);; Ctrl-K with no kill

(global-set-key (kbd "C-w") 'cut-line-or-region) ; cut
(global-set-key (kbd "M-w") 'copy-line-or-region) ; copy
;;放大缩小文本
;;(global-set-key (kbd"C--") 'text-scale-decrease)
;;(global-set-key (kbd"C-=") 'text-scale-increase)

;;关闭emacsclient打开的文件
(global-set-key (kbd"C-x C-w") 'server-edit)

;;(global-unset-key (kbd " C-SPC"))
;;make C-z do nothing
(global-unset-key (kbd "C-x C-z"));;unbound keys to suspend-frame
(global-set-key [(f5)] 'speedbar)
(global-set-key (kbd "C-z") 'undo)

(global-set-key (kbd "C-S-z") 'undo-tree-redo)


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
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
(global-set-key (kbd "C-h r") 'helm-info-emacs)
;;C-<DEL>
(define-key helm-find-files-map
  [(control backspace)] #'helm-find-files-up-one-level)
(define-key helm-read-file-map
  [(control backspace)] #'helm-find-files-up-one-level)

(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
;;Customize function keymap
(global-set-key (kbd "C-x C-k") 'kill-other-buffers)
;;move between brackets
(global-set-key (kbd "C-M-[") 'xah-backward-left-bracket)
(global-set-key (kbd "C-M-]") 'xah-forward-right-bracket)

(provide 'init-key)
