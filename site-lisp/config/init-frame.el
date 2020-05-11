(tool-bar-mode -1)
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; frame transparency
(setq frame-transparency-list '((95 85) (100 100)))
(defun toggle-frame-transparency ()
  (interactive)
  (let ((h (car frame-transparency-list)))
    ((lambda (a ab)
       (set-frame-parameter (selected-frame) 'alpha (list a ab))
       (add-to-list 'default-frame-alist (cons 'alpha (list a ab)))
       ) (car h) (car (cdr h)))
    (setq alpha-list (cdr (append alpha-list (list h))))
    )
)

(provide 'init-frame)
