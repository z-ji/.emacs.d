(autoload 'dired-async-mode "dired-async.el" nil t)
(dired-async-mode 1)
;; Enable asynchronous compilation of the (M)elpa packages
(async-bytecomp-package-mode 1)

(provide 'init-async)
