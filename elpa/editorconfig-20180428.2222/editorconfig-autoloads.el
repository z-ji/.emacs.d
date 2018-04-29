;;; editorconfig-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "editorconfig" "editorconfig.el" (0 0 0 0))
;;; Generated autoloads from editorconfig.el

(autoload 'editorconfig-find-current-editorconfig "editorconfig" "\
Find the closest .editorconfig file for current file.\n\n(fn)" t nil)

(autoload 'editorconfig-display-current-properties "editorconfig" "\
Display EditorConfig properties extracted for current buffer.\n\n(fn)" t nil)

(autoload 'editorconfig-apply "editorconfig" "\
Apply EditorConfig properties for current buffer.\nThis function ignores `editorconfig-exclude-modes' and always\napplies available properties.\n\n(fn)" t nil)

(defvar editorconfig-mode nil "\
Non-nil if Editorconfig mode is enabled.\nSee the `editorconfig-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `editorconfig-mode'.")

(custom-autoload 'editorconfig-mode "editorconfig" nil)

(autoload 'editorconfig-mode "editorconfig" "\
Toggle EditorConfig feature.\nWhen enabled EditorConfig properties will be applied to buffers\nwhen first visiting files or changing major modes if the major\nmode is not listed in `editorconfig-exclude-modes'.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "editorconfig" '("editorconfig-")))

;;;***

;;;### (autoloads nil "editorconfig-conf-mode" "editorconfig-conf-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from editorconfig-conf-mode.el

(autoload 'editorconfig-conf-mode "editorconfig-conf-mode" "\
Major mode for editing .editorconfig files.\n\n(fn)" t nil)

(add-to-list 'auto-mode-alist '("/\\.editorconfig\\'" . editorconfig-conf-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "editorconfig-conf-mode" '("editorconfig-conf-mode-syntax-table")))

;;;***

;;;### (autoloads nil "editorconfig-core" "editorconfig-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from editorconfig-core.el

(autoload 'editorconfig-core-get-nearest-editorconfig "editorconfig-core" "\
Return path to .editorconfig file that is closest to DIRECTORY.\n\n(fn DIRECTORY)" nil nil)

(autoload 'editorconfig-core-get-properties "editorconfig-core" "\
Get EditorConfig properties for FILE.\nIf FILE is not given, use currently visiting file.\nGive CONFNAME for basename of config file other than .editorconfig.\nIf need to specify config format version, give CONFVERSION.\n\nThis functions returns alist of properties.  Each element will look like\n'(KEY . VALUE) .\n\n(fn &optional FILE CONFNAME CONFVERSION)" nil nil)

(autoload 'editorconfig-core-get-properties-hash "editorconfig-core" "\
Get EditorConfig properties for FILE.\nIf FILE is not given, use currently visiting file.\nGive CONFNAME for basename of config file other than .editorconfig.\nIf need to specify config format version, give CONFVERSION.\n\nThis function is almost same as `editorconfig-core-get-properties', but returns\nhash object instead.\n\n(fn &optional FILE CONFNAME CONFVERSION)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "editorconfig-core" '("editorconfig-core-")))

;;;***

;;;### (autoloads nil "editorconfig-core-handle" "editorconfig-core-handle.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from editorconfig-core-handle.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "editorconfig-core-handle" '("editorconfig-core-handle")))

;;;***

;;;### (autoloads nil "editorconfig-fnmatch" "editorconfig-fnmatch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from editorconfig-fnmatch.el

(autoload 'editorconfig-fnmatch-p "editorconfig-fnmatch" "\
Test whether NAME match PATTERN.\n\nMatching ignores case if `case-fold-search' is non-nil.\n\nPATTERN should be a shell glob pattern, and some zsh-like wildcard matchings can\nbe used:\n\n*           Matches any string of characters, except path separators (/)\n**          Matches any string of characters\n?           Matches any single character\n[name]      Matches any single character in name\n[^name]     Matches any single character not in name\n{s1,s2,s3}  Matches any of the strings given (separated by commas)\n{min..max}  Matches any number between min and max\n\n(fn NAME PATTERN)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "editorconfig-fnmatch" '("editorconfig-fnmatch-")))

;;;***

;;;### (autoloads nil nil ("editorconfig-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; editorconfig-autoloads.el ends here
