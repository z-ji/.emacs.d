;; place here because it will not affect files that are loaded before the customization are read
(setq load-prefer-newer t)

(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to `load-path'."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))
(add-subdirs-to-load-path "~/.emacs.d/site-lisp/")
;;;------package config start------
;; Added by Package.el.  This must come before configurations installed packages.
(require 'package)
;;emacs benchmark-init
;;cd ~/.emacs.d/site-lisp/extensions/benchmark-init-el && make
;;(require 'benchmark-init-loaddefs)
;;(benchmark-init/activate)
;;melpa
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
;;Load Emacs Lisp packages, and activate them.
(when (version< emacs-version "27.0") (package-initialize))
;;;------package config end------

;;;------modular config start------
(when (file-exists-p (expand-file-name "init-local.el" user-emacs-directory))
  (error "Please move init-local.el to ~/.emacs.d/site-lisp/config"))
(eval-when-compile (require 'cl))
(require 'init-local nil t)
(require 'init-highlight-parentheses)
(require 'init-frame)
;;(require 'init-nord-theme)
(require 'init-moe-theme)
(require 'init-cnfonts)
;;(require 'init-font)
(require 'init-async)
(require 'init-helm)
(require 'init-company)
(require 'init-imenu-anywhere)
(require 'init-bracket)
(require 'init-key)
;;(require 'init-undo-tree)
;;;------line mode------
(when (version< emacs-version "26.1") (require 'init-nlinum))
(when (version<= "26.1" emacs-version) (require 'init-display-line-numbers))
;;;------line mode------
(require 'init-magit)
(require 'init-org)
(require 'init-tramp)
(require 'init-time-in-mode-line);;mode line显示当前时间
(require 'init-auto-save)
(require 'init-dino-dired-fixups)
(require 'init-multi-term)
(require 'init-editorconfig)
(require 'init-expand-region)
;;(require 'init-clipmon)
(require 'init-show-paren)
(require 'init-plantuml)
(require 'init-use-package)
(require 'init-macOS)
(require 'init-customized-functions)
(require 'init-build-in)
(require 'init-yaml)
(require 'init-restclient)
(require 'init-exec-path-from-shell)
(require 'init-org-section-numbers)
(require 'init-dockerfile)
;;;------modular config end------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (fish-mode undo-fu cnfonts dockerfile-mode markdown-mode exec-path-from-shell ox-pandoc restclient yaml-mode nord-theme htmlize nlinum elfeed with-editor helm-ag async use-package plantuml-mode clipmon helm multi-term imenu-anywhere highlight-parentheses moe-theme powerline editorconfig expand-region org ox-twbs company dash magit)))
 '(tramp-syntax (quote default) nil (tramp)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

