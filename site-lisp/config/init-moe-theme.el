(require 'powerline)

;; Moe-theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/resources/moe-theme/")
(add-to-list 'load-path "~/.emacs.d/resources/moe-theme/")
(require 'moe-theme)
(powerline-moe-theme)

;; Show highlighted buffer-id as decoration. (Default: nil)
;;(setq moe-theme-highlight-buffer-id t)

(moe-theme-set-color 'w/b)
;;(moe-theme-random-color)

;;(setq moe-light-pure-white-background-in-terminal t)

(moe-dark)
;;(moe-light)
;;(require 'moe-theme-switcher)
;;(moe-theme-auto-switch)

(provide 'init-moe-theme)
