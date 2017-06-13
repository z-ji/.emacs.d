;;this will popup a window to ASKPASS in windows, and oprate on 'ECHO AREA' of emacs in linux
(setenv "GIT_ASKPASS" "git-gui--askpass")
;;(defconst initial-buffer-choice-value "~/emacs/all.org" "启动时打开的buffer")
;;(defconst default-directory-value "~/emacs" "C-x C-f时的默认目录")
(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to `load-path'."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))
(add-subdirs-to-load-path "~/.emacs.d/site-lisp/")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;init package;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;init package;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;build-in variable and function;;;;;;;;;;;;;;;;;;;;;;;;;;
;;avoid the warning message 'ad-handle-definition: `tramp-read-passwd' got redefined'
(setq ad-redefinition-action 'accept)
;;启动时最大化,置于此处以提高gui加载到完成全屏的速度
;;(toggle-frame-maximized)
(toggle-frame-fullscreen)
;;use for emacsclient
(server-start)
;;melpa
;;(setq package-selected-packages (quote (dash company)))
;;自动配对
(electric-pair-mode 1)
;;(require 'autopair)
;;(autopair-global-mode) ;; enable agutopair in all buffers
;;默认目录
;;(setq default-directory (symbol-value 'default-directory-value) )
;;以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p)
(tool-bar-mode -1)
(menu-bar-mode -1)
;;Get visual indication of an exception
;;(setq visible-bell 1)
;;Turn off alarms completely
(setq ring-bell-function 'ignore)
;;滚动条
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;;(which-function-mode 1)                 ;在mode line上显示当前光标在哪个函数体内部
(blink-cursor-mode -1)                  ;指针不闪动
;;(setq inhibit-startup-screen t)
;;(setq initial-buffer-choice (symbol-value 'initial-buffer-choice-value)) ;;值改为变量
;;highlight current line
(global-hl-line-mode 0)
(setq global-hl-line-sticky-flag 1);;默认值为nil
;; To customize the background color
;;(set-face-background 'hl-line "red")
;;设置光标类型
(set-default 'cursor-type 'bar)
;;设置visual-line-mode为全局的,一行字数超过当前窗口大小时换行显示
;;(add-hook 'text-mode-hook 'turn-on-visual-line-mode)全局visual-line-mode的另一种方式
;;(setq global-visual-line-mode t)全局无效
;;(global-visual-line-mode t)
;;让mode line显示列数(行数为默认显示)
(column-number-mode t)
;;; 在mode-line显示当前Buffer的大小
;;(size-indication-mode 1)
;;不生成*~备份文件
;;(setq make-backup-files nil)
;;保存file～备份文件到指定目录中
(setq backup-directory-alist '(("" . "~/tmp/emacs")))
;;不生成#*#备份文件
(setq auto-save-default nil)
;;meet the 50/72 format
(setq-default fill-column 72)
;;recentf config
(setq recentf-max-menu-items 999)
(setq recentf-max-saved-items 999)
;;set default file encoding
;; (set-language-environment "UTF-8")
;; (set-default-coding-systems 'utf-8)
;; (set-locale-environment "zh_CN.UTF-8")
;; (prefer-coding-system 'utf-8)
;;;;;---粘贴中文时不能正确的显示为中文---
;; (set-selection-coding-system 'utf-8)
;;在保存时自动清除行尾空格及文件结尾空行
;;(add-hook 'before-save-hook 'delete-trailing-whitespace)
;;enable lower/upper case convert for a region
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
;;enable the auto save/restore the desktop when exit/restart emacs
;;(desktop-save-mode t)
;;enable global-whitespace-mode
;;(global-whitespace-mode t)
;;space only
(setq-default indent-tabs-mode nil)
;; set default tab char's display width to 4 spaces which default is 8 spaces
(setq-default tab-width 4)
;;let xdg-open works in eshell and org-mode export to html
(setq process-connection-type nil)
;;Avoid 'timed out waiting for property notify event' when select large region in x environment.
;;from http://emacs.1067599.n5.nabble.com/bug-13486-24-2-92-large-X-selections-timed-out-waiting-for-property-notify-event-td275798.html#a286215
(setq select-active-regions nil)
(setq auto-revert-interval 1)
;;;;;;;;;;;;;;;;;;;;;;;;;;build-in variable and function;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;config external lisp;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
(require 'ox-latex-chinese)
(oxlc/toggle-ox-latex-chinese t)
(require 'init-expand-region)
;;(require 'init-clipmon)
(require 'init-show-paren)
(require 'init-plantuml)
(require 'init-use-package)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;config external lisp;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun org-insert-now ()
    "insert current date-time to current cursor."
    (interactive)
    (org-insert-heading-respect-content)
    (insert (format-time-string "<%Y-%m-%d %a %T:%3N> ") (current-buffer)))
(defun insert-now ()
    "insert current date-time to current cursor."
    (interactive)
    (insert (format-time-string "<%Y-%m-%d %a %T:%3N>") (current-buffer)))
;;当前时间函数
(defun now-is ()
    "Display current time."
    (interactive)
    (message (format-time-string "Now is %Y-%m-%d %a %T")))
;; Ctrl-S-K delete line without kill
(defun delete-line ()
  (interactive)
  (delete-region
   (point)
   (save-excursion (move-end-of-line 1) (point)))
  (delete-char 1)
)
;;重定义C-W A-W 增加cut copy一行的功能
(defun cut-line-or-region ()
  "Cut the current line, or current text selection."
  (interactive)
  (if (use-region-p)
      (kill-region (region-beginning) (region-end))
    (kill-region (line-beginning-position) (line-beginning-position 2)) (message "cut-line-or-region")) )
(defun copy-line-or-region ()
  "Copy current line, or current text selection."
  (interactive)
  (if (use-region-p)
      (kill-ring-save (region-beginning) (region-end))
    (kill-ring-save (line-beginning-position) (line-beginning-position 2)) (message "copy-line-or-region")) )
;;kill-other-buffers
;;http://stackoverflow.com/questions/3417438/closing-all-other-buffers-in-emacs
(defun kill-other-buffers ()
    "Kill all other buffers."
    (interactive)
    (mapc 'kill-buffer
          (delq (current-buffer)
                (remove-if-not 'buffer-file-name (buffer-list)))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (use-package plantuml-mode clipmon helm multi-term imenu-anywhere highlight-parentheses moe-theme powerline editorconfig expand-region ox-latex-chinese org json-mode ox-twbs company dash magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'notifications)

;; (notifications-notify :title "Achtung!"
;;                       :body (format "You have an appointment in %d minutes" 10)
;;                       :app-name "Emacs: Org"
;;                       :sound-name "alarm-clock-elapsed")
