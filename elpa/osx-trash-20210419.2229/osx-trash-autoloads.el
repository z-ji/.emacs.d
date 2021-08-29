;;; osx-trash-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "osx-trash" "osx-trash.el" (0 0 0 0))
;;; Generated autoloads from osx-trash.el

(autoload 'osx-trash-setup "osx-trash" "\
Provide trash support for OS X.

Provide `system-move-file-to-trash' as an alias for
`osx-trash-move-file-to-trash'.

Note that you still need to set `delete-by-moving-to-trash' to a
non-nil value to enable trashing for file operations." nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "osx-trash" '("osx-trash-")))

;;;***

;;;### (autoloads nil nil ("osx-trash-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; osx-trash-autoloads.el ends here
