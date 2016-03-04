;;theme
;;(global-linum-mode t)
;;(require 'theme)
;;solarized theme
;;(setq custom-theme-load-path
;;   (quote
;;    ("/home/byboating/.emacs.d/site-lisp/theme/emacs-color-theme-solarized/color-theme-solarized-20150813" custom-theme-directory t)))
;;(load-theme 'solarized t)
;;---字体设置---
(if (display-grayscale-p)
    (progn
      (set-frame-font (format "%s-%s" (eval emacs-font-name) (eval
emacs-font-size)))
      (set-fontset-font (frame-parameter nil 'font) 'unicode (eval
							      emacs-font-name))))
;;(add-to-list 'load-path "~/.emacs.d/site-lisp/extensions/meo-theme.el/")

;;---moe-theme---
(require 'moe-theme)
;; ;; Show highlighted buffer-id as decoration. (Default: nil)
;; (setq moe-theme-highlight-buffer-id nil)
;; ;; Resize titles (optional).
;; ;;(setq moe-theme-resize-markdown-title '(1.5 1.4 1.3 1.2 1.0 1.0))
;; ;;(setq moe-theme-resize-org-title '(1.5 1.4 1.3 1.2 1.1 1.0 1.0 1.0 1.0))
;; ;;(setq moe-theme-resize-rst-title '(1.5 1.4 1.3 1.2 1.1 1.0))
;; ;; Choose a color for mode-line.(Default: blue)
;; ;; (Available colors: blue, orange, green ,magenta, yellow, purple, red, cyan, w/b.)
(moe-theme-set-color 'w/b)
(setq moe-light-pure-white-background-in-terminal t)
;;(moe-light)
(moe-dark)
(require 'moe-theme-switcher)

;;---powerline---
(require 'powerline)
;;(powerline-default-theme)
;;(powerline-center-theme)
;;(powerline-center-evil-theme)
(powerline-moe-theme)
;;(powerline-vim-theme)
;;(powerline-nano-theme)
;;---paren---
;;启用并修改括号自带配置
(show-paren-mode t)
(setq show-paren-style 'expression)
;;高亮配对的括号
;;Enables highlight-parentheses-mode on all buffers
(require 'highlight-parentheses)
;; (define-globalized-minor-mode global-highlight-parentheses-mode
;;   highlight-parentheses-mode
;;   (lambda ()
;;     (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)

;;---theme---
;;(require 'theme)
(provide 'init-theme)
