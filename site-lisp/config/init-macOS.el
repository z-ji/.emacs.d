;;;Command key act as Meta
(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)
;;;other mac os settings, consider using 'emacsclient -c'
(setq ns-pop-up-frames nil)
;;解决中文输入法光标向前闪烁的问题
(setq redisplay-dont-pause nil)

;; fix error message in macOS :ls does not support --dired; see `dired-use-ls-dired' for more details.
;; see https://stackoverflow.com/questions/25125200/emacs-error-ls-does-not-support-dired
(when (eq system-type 'darwin)
  (require 'ls-lisp)
  (setq ls-lisp-use-insert-directory-program nil))

(provide 'init-macOS)
