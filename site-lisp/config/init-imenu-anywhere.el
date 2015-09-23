;;imenu-anywhere 可不只用于org mode，
(require 'imenu-anywhere)
(global-set-key (kbd "C-.") 'helm-imenu-anywhere)
(provide 'init-imenu-anywhere)