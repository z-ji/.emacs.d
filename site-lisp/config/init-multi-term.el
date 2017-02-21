(require 'multi-term)
;;(setq multi-term-program "/bin/bash")
(add-hook 'term-mode-hook
          (lambda ()
            (setq term-buffer-maximum-size 20480)))
(provide 'init-multi-term)
