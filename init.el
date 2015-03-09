(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "elisp/emacs-async" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "elisp/helm" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "elisp/org-mode/lisp" user-emacs-directory))

(require 'package)
;(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
;(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;			 ("melpa" . "http://melpa.org/packages/")
					;			 ("marmalade" . "https://marmalade-repo.org/packages/")))
;(add-to-list 'Info-default-directory-list "elisp/org-mode")
;org mode
;(require 'org-install)
;(require 'org-habit)
;设置时区 utc8北京时间
(setenv "TZ" "UTC-08:00")
;;多标签
(setq tabbar-ruler-global-tabbar t) ; If you want tabbar
(setq tabbar-ruler-global-ruler t) ; if you want a global ruler
(setq tabbar-ruler-popup-menu t) ; If you want a popup menu.
(setq tabbar-ruler-popup-toolbar t) ; If you want a popup toolbar
(setq tabbar-ruler-popup-scrollbar t) ; If you want to only show the
                                      ; scroll bar when your mouse is moving.
;;(require 'tabbar-ruler)

;;url默认使用chromium
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "chromium-browser")
;;window-numbering,使用 M-(1,2,3...9)窗口切换
(require 'window-numbering)
(setq window-numbering-assign-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))
(window-numbering-mode 1)
;;company
(setq company-idle-delay 0)
(require 'theme)
;(require 'jazz-theme)
;;-----------------helm---------------------
(require 'helm)
(require 'helm-config)
(helm-mode 1)
(helm-autoresize-mode 1)
(setq helm-fuzzy-match t
      helm-M-x-fuzzy-match t
      helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match t
      helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match t
      helm-locate-fuzzy-match t
      helm-apropos-fuzzy-match t
      helm-lisp-fuzzy-completion t
      enable-recursive-minibuffers t)

;;emacs-async
(when (require 'dired-aux)
  (require 'dired-async))

(require 'init-time)
(require 'init-key)
(require 'tramp)
(require 'helloworld)
(add-hook 'after-init-hook 'global-company-mode)
(server-start)
;;
(setq tramp-default-method "sudo")
;;emacs extension of chrome
(require 'edit-server)
(edit-server-start)
;;variables
(setq inhibit-startup-screen t)
(setq make-backup-files nil)            ;;禁用文件自动备份
;;commands
(tool-bar-mode -1)                      ;禁用工具栏
(scroll-bar-mode -1)                    ;禁用滚动条
(which-function-mode 1)                 ;在mode line上显示当前光标在哪个函数体内部
(blink-cursor-mode -1)                  ;指针不闪动
;;Org Mode
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)
;;org todo keywords
(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d)" "GONE(g)")
	(sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
	(sequence "|" "CANCELED(c)")))
;;
;;(setq org-log-done 'note)

;(setq global-visual-line-mode t)
;;设置visual-line-mode为全局的
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)
;;全屏 最大化
(defun fullscreen ()
 (interactive)
 (set-frame-parameter nil 'fullscreen
              (if (frame-parameter nil 'fullscreen) nil 'fullboth))
)

(defun toggle-frame-maximized (&optional f)
       (interactive)
       (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
       (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))

(toggle-frame-maximized);;启动时最大化

(add-hook 'message-mode-hook 'turn-on-orgstruct)
(add-hook 'message-mode-hook 'turn-on-orgstruct++)

;;显示行数
(global-linum-mode t)
;;高亮配对的括号

;;自动配对
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers
;;Enables highlight-parentheses-mode on all buffers
(require 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))

(global-highlight-parentheses-mode t)
;;(global-visual-line-mode t);;一行字数超过当前窗口大小时换行显示
;;在mode line显示行数和列数,
(column-number-mode t) 
(line-number-mode t) ;;行数是默认启用的
(fset 'yes-or-no-p 'y-or-n-p) ;;以 y/n代表 yes/no

(defun find-file-root (file)
  "Find file with root."
  (interactive "fFind file as sudo: ")
  (tramp-cleanup-all-connections)
  (find-file (concat "/sudo:root@localhost:" file)))

;;; ### Minibuffer ###
;;; --- 迷你buffer
(setq minibuffer-message-timeout 1)     ;显示消息超时的时间
;;; ### Modeline-posn ###
;;; --- 在 Mode-line 显示当前Buffer的大小
(size-indication-mode 1)

;;在mode-line显示当前时间
(defun now-is ()
    "Display current time."
    (interactive)
    (message (format-time-string "Now is %Y-%m-%d %T")))

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
    (kill-region (line-beginning-position) (line-beginning-position 2)) ) )
(defun copy-line-or-region ()
  "Copy current line, or current text selection."
  (interactive)
  (if (use-region-p)
      (kill-ring-save (region-beginning) (region-end))
    (kill-ring-save (line-beginning-position) (line-beginning-position 2)) ) )

;;---------Org-mode export html with mathjax-----
(setq org-html-mathjax-options '((path "http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML")))
;;or use in a sigle file with org-mode  #+HTML_MATHJAX: align:"left" mathml:t path:""

(custom-set-variables
)
;字体设置
(defvar emacs-font-name "DejaVu Sans Mono"
;(defvar emacs-font-name "文泉驿等宽微米黑"  
  "The font name of English.")
(defvar emacs-font-size 14
  "The default font size.")
(if (display-grayscale-p)
    (progn
      (set-frame-font (format "%s-%s" (eval emacs-font-name) (eval
emacs-font-size)))
      (set-fontset-font (frame-parameter nil 'font) 'unicode (eval
emacs-font-name))))

;设置光标类型,possible values are box (the default), hollow (a hollow box), bar (a vertical bar), (bar . n) (a vertical bar n pixels wide), hbar (a horizontal bar), (hbar . n) (a horizontal bar n pixels tall), or nil (no cursor at all).
(set-default 'cursor-type 'bar)
