;;conflict with (toggle-frame-maximized) in macOS, so must be here
(tool-bar-mode -1)
;; toggle-frame-fullscreen or toggle-frame-maximized should be the sooner the better
;;(toggle-frame-fullscreen)
(toggle-frame-maximized)
;;(defconst initial-buffer-choice-value "~/emacs/all.org" "启动时打开的buffer")
;;(defconst default-directory-value "~/emacs" "C-x C-f时的默认目录")
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
(package-initialize)
;;;------package config end------

;;;------modular config start------
(when (file-exists-p (expand-file-name "init-local.el" user-emacs-directory))
  (error "Please move init-local.el to ~/.emacs.d/site-lisp/config"))
(eval-when-compile (require 'cl))
(require 'init-local nil t)
(require 'init-highlight-parentheses)
(require 'init-moe-theme)
(require 'init-font)
(require 'init-async)
(require 'init-helm)
(require 'init-company)
(require 'init-imenu-anywhere)
(require 'init-bracket)
(require 'init-key)
(require 'init-undo-tree)
(require 'init-nlinum)
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
;;;------modular config end------

(custom-set-variables
 '(package-selected-packages
   (quote
    (elfeed with-editor helm-ag async use-package plantuml-mode clipmon helm multi-term imenu-anywhere highlight-parentheses moe-theme powerline editorconfig expand-region org json-mode ox-twbs company dash magit))))
