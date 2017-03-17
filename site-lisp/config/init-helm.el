;;-----------------helm---------------------
(require 'helm-config)
(helm-mode 1)
(helm-autoresize-mode 1)

(setq helm-mode-fuzzy-match t
      helm-completion-in-region-fuzzy-match t
      enable-recursive-minibuffers t)
(setq helm-buffer-max-length 70)

(setq helm-external-programs-associations (quote (("pdf" . "open"))))
(provide 'init-helm)
