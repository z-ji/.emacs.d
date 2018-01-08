(require 'helm-config)
(helm-mode 1)
(helm-autoresize-mode 1)
(setq ;;;Fuzzy matching, see https://github.com/emacs-helm/helm/wiki/Fuzzy-matching
      helm-mode-fuzzy-match t
      helm-completion-in-region-fuzzy-match t
      helm-recentf-fuzzy-match t
      helm-buffers-fuzzy-matching t
      helm-locate-fuzzy-match t
      helm-M-x-fuzzy-match t
      helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match t
      helm-apropos-fuzzy-match t
      helm-lisp-fuzzy-completion t
      helm-session-fuzzy-match t
      helm-etags-fuzzy-match t
      helm-lisp-fuzzy-completion t
      ;;;Making the minibuffer recursive
      enable-recursive-minibuffers t
      ;;;Max length of buffer names
      helm-buffer-max-length 70)
(setq helm-external-programs-associations (quote (("pdf" . "open"))))
(provide 'init-helm)
