;;theme
;;(global-linum-mode t)
;;(require 'theme)
;;solarized theme
;;(setq custom-theme-load-path
;;   (quote
;;    ("/home/byboating/.emacs.d/site-lisp/theme/emacs-color-theme-solarized/color-theme-solarized-20150813" custom-theme-directory t)))
;;(load-theme 'solarized t)
;;字体设置
;;Font Settings for Deepin Linux
;;(defvar emacs-font-name "文泉驿等宽微米黑"
;;(defvar emacs-font-name "sans-serif"
(defvar emacs-font-name "DejaVu Sans Mono"
;;(defvar emacs-font-name "微软雅黑"
;;(defvar emacs-font-name "Inconsolata"
;;(defvar emacs-font-name "Droid Sans Mono"
;;(defvar emacs-font-name "Ubuntu Mono"
;;Font Settings for Winodws
;;(defvar emacs-font-name "Source Han Sans SC"
  "The font name of English.")
(defvar emacs-font-size 14
  "The default font size.")
(if (display-grayscale-p)
    (progn
      (set-frame-font (format "%s-%s" (eval emacs-font-name) (eval
emacs-font-size)))
      (set-fontset-font (frame-parameter nil 'font) 'unicode (eval
							      emacs-font-name))))
(provide 'init-theme)
