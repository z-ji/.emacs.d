;; (if (display-grayscale-p)
;;     (progn
;;       (set-frame-font (format "%s-%s" (eval emacs-font-name) (eval emacs-font-size)))
;;       (set-fontset-font (frame-parameter nil 'font) 'unicode (eval
;;                                                               emacs-font-name))))
;;---setting font for emacsclient -c some_files, will also affect emacs main frame, and make font configuration above invalid---

;;;default font for macOS

;;;frame-notice-user-settings: Invalid font: format, "%s-%s", (eval emacs-font-name), (eval emacs-font-size)
;;(setq default-frame-alist '((font . (format "%s-%s" (eval emacs-font-name) (eval emacs-font-size)))))

;;;working for `emacsclient -c aFile`
;;(setq default-frame-alist '((font . "Menlo-14")
                            ;;(width . 160) (height . 40)
;;                            ))

;;(add-to-list 'default-frame-alist '(font . "Menlo-14"))

;;;not working for `emacsclient -c aFile`
(set-default-font (format "%s-%s" (eval emacs-font-name) (eval emacs-font-size)))

(provide 'init-font)
