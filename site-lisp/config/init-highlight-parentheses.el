;;高亮配对的括号
;;Enables highlight-parentheses-mode on all buffers
(require 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))

(global-highlight-parentheses-mode t)
(provide 'init-highlight-parentheses)
