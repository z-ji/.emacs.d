(require 'multi-term)
(add-hook 'term-mode-hook
          (lambda ()
            (setq term-buffer-maximum-size 20480)))
(provide 'init-multi-term)
