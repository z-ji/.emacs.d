;;theme
;;(global-linum-mode t)
;;(require 'theme)
;;solarized theme
;;(setq custom-theme-load-path
;;   (quote
;;    ("/home/byboating/.emacs.d/site-lisp/theme/emacs-color-theme-solarized/color-theme-solarized-20150813" custom-theme-directory t)))
;;(load-theme 'solarized t)
;;字体设置
(defvar emacs-font-size 12
  "The default font size.")
(if (display-grayscale-p)
    (progn
      (set-frame-font (format "%s-%s" (eval emacs-font-name) (eval
emacs-font-size)))
      (set-fontset-font (frame-parameter nil 'font) 'unicode (eval
							      emacs-font-name))))
(provide 'init-theme)
