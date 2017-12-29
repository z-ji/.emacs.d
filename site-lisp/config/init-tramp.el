(require 'tramp)
(setq tramp-default-method "sudo")
(defun find-file-root (file)
  "Find file with root."
  (interactive "Find file as sudo: ")
;;  (tramp-cleanup-all-connections)
  (find-file (concat "/sudo:root@localhost:" file)))
(provide 'init-tramp)
