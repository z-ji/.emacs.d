(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-M-w") 'er/expand-region)
;; see https://github.com/magnars/expand-region.el/issues/220
(setq shift-select-mode nil)
(provide 'init-expand-region)
