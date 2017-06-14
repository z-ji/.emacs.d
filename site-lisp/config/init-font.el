;; (if (display-grayscale-p)
;;     (progn
;;       (set-frame-font (format "%s-%s" (eval emacs-font-name) (eval emacs-font-size)))
;;       (set-fontset-font (frame-parameter nil 'font) 'unicode (eval
;;                                                               emacs-font-name))))
;;---setting font for emacsclient -c some_files, will also affect emacs main frame, and make font configuration above invalid---
(setq default-frame-alist '((font . "Monaco-14")
;;(setq default-frame-alist '((font . "Noto Sans Mono CJK sc Regular-14")
                            (width . 160) (height . 40)
                            ))
(provide 'init-font)
