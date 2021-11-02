(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
;; "text-mode" is a major mode for editing files of text in a human language"
;; most major modes for non-programmers inherit from text-mode
(defun text-mode-hook-setup ()
  ;; make `company-backends' local is critcal
  ;; or else, you will have completion in every major mode, that's very annoying!
  (make-local-variable 'company-backends)
  ;; company-ispell is the plugin to complete words
  (add-to-list 'company-backends 'company-ispell)
  ;; OPTIONAL, if `company-ispell-dictionary' is nil, `ispell-complete-word-dict' is used
  ;;  but I prefer hard code the dictionary path. That's more portable.
  (setq company-ispell-dictionary (file-truename "~/.emacs.d/resources/words.txt")))
(add-hook 'text-mode-hook 'text-mode-hook-setup)
(defun toggle-company-ispell ()
  (interactive)
  (cond
   ((memq 'company-ispell company-backends)
    (setq company-backends (delete 'company-ispell company-backends))
    (message "company-ispell disabled"))
   (t
    (add-to-list 'company-backends 'company-ispell)
    (message "company-ispell enabled!"))))
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0.1)
(provide 'init-company)
