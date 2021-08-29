(require 'osx-trash)

;;;moving files to trash instead of deleting files
(setq delete-by-moving-to-trash t)
;;;using osx-trash, see https://github.com/emacsorphanage/osx-trash
(when (eq system-type 'darwin)
  (osx-trash-setup))

(provide 'init-trash)
