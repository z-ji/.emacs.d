;;-----------------helm---------------------
(require 'helm-config)
(helm-mode 1)
(helm-autoresize-mode 1)

(setq helm-M-x-fuzzy-match t
      helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match t
      helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match t
      helm-locate-fuzzy-match t
      helm-apropos-fuzzy-match t
      helm-lisp-fuzzy-completion t
      enable-recursive-minibuffers t)
(setq helm-buffer-max-length 70)
(provide 'init-helm)
