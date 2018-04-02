(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-hook 'yaml-mode-hook
 '(lambda ()
    (Define-key yaml-mode-map "\C-m" 'newline-and-indent)))

(provide 'init-yaml)
