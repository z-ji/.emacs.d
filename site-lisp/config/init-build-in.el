;;this will popup a window to ASKPASS in windows, and oprate on 'ECHO AREA' of emacs in linux
(setenv "GIT_ASKPASS" "git-gui--askpass")
;;;;;;;;;;;;;;;;;;;;;;;;;;build-in variable and function;;;;;;;;;;;;;;;;;;;;;;;;;;
;;avoid the warning message 'ad-handle-definition: `tramp-read-passwd' got redefined'
(setq ad-redefinition-action 'accept)
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

(provide 'init-build-in)
