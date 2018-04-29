;;; helm-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "helm-adaptive" "helm-adaptive.el" (0 0 0 0))
;;; Generated autoloads from helm-adaptive.el

(defvar helm-adaptive-mode nil "\
Non-nil if Helm-Adaptive mode is enabled.\nSee the `helm-adaptive-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `helm-adaptive-mode'.")

(custom-autoload 'helm-adaptive-mode "helm-adaptive" nil)

(autoload 'helm-adaptive-mode "helm-adaptive" "\
Toggle adaptive sorting in all sources.\n\n(fn &optional ARG)" t nil)

(autoload 'helm-reset-adaptive-history "helm-adaptive" "\
Delete all `helm-adaptive-history' and his file.\nUseful when you have a old or corrupted `helm-adaptive-history-file'.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-adaptive" '("helm-adapt")))

;;;***

;;;### (autoloads nil "helm-bookmark" "helm-bookmark.el" (0 0 0 0))
;;; Generated autoloads from helm-bookmark.el

(autoload 'helm-bookmarks "helm-bookmark" "\
Preconfigured `helm' for bookmarks.\n\n(fn)" t nil)

(autoload 'helm-filtered-bookmarks "helm-bookmark" "\
Preconfigured helm for bookmarks (filtered by category).\nOptional source `helm-source-bookmark-addressbook' is loaded\nonly if external addressbook-bookmark package is installed.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-bookmark" '("bmkext-jump-" "bookmark" "helm-")))

;;;***

;;;### (autoloads nil "helm-buffers" "helm-buffers.el" (0 0 0 0))
;;; Generated autoloads from helm-buffers.el

(autoload 'helm-buffers-list "helm-buffers" "\
Preconfigured `helm' to list buffers.\n\n(fn)" t nil)

(autoload 'helm-mini "helm-buffers" "\
Preconfigured `helm' lightweight version (buffer -> recentf).\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-buffers" '("helm-")))

;;;***

;;;### (autoloads nil "helm-color" "helm-color.el" (0 0 0 0))
;;; Generated autoloads from helm-color.el

(autoload 'helm-colors "helm-color" "\
Preconfigured `helm' for color.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-color" '("helm-")))

;;;***

;;;### (autoloads nil "helm-command" "helm-command.el" (0 0 0 0))
;;; Generated autoloads from helm-command.el

(autoload 'helm-M-x "helm-command" "\
Preconfigured `helm' for Emacs commands.\nIt is `helm' replacement of regular `M-x' `execute-extended-command'.\n\nUnlike regular `M-x' emacs vanilla `execute-extended-command' command,\nthe prefix args if needed, can be passed AFTER starting `helm-M-x'.\nWhen a prefix arg is passed BEFORE starting `helm-M-x', the first `C-u'\nwhile in `helm-M-x' session will disable it.\n\nYou can get help on each command by persistent action.\n\n(fn ARG &optional COMMAND-NAME)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-command" '("helm-")))

;;;***

;;;### (autoloads nil "helm-config" "helm-config.el" (0 0 0 0))
;;; Generated autoloads from helm-config.el

(autoload 'helm-configuration "helm-config" "\
Customize `helm'.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-config" '("helm-")))

;;;***

;;;### (autoloads nil "helm-dabbrev" "helm-dabbrev.el" (0 0 0 0))
;;; Generated autoloads from helm-dabbrev.el

(autoload 'helm-dabbrev "helm-dabbrev" "\
Preconfigured helm for dynamic abbreviations.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-dabbrev" '("helm-dabbrev-")))

;;;***

;;;### (autoloads nil "helm-elisp" "helm-elisp.el" (0 0 0 0))
;;; Generated autoloads from helm-elisp.el

(autoload 'helm-lisp-completion-at-point "helm-elisp" "\
Preconfigured helm for lisp symbol completion at point.\n\n(fn)" t nil)

(autoload 'helm-complete-file-name-at-point "helm-elisp" "\
Preconfigured helm to complete file name at point.\n\n(fn &optional FORCE)" t nil)

(autoload 'helm-lisp-indent "helm-elisp" "\
\n\n(fn)" t nil)

(autoload 'helm-lisp-completion-or-file-name-at-point "helm-elisp" "\
Preconfigured helm to complete lisp symbol or filename at point.\nFilename completion happen if string start after or between a double quote.\n\n(fn)" t nil)

(autoload 'helm-apropos "helm-elisp" "\
Preconfigured helm to describe commands, functions, variables and faces.\nIn non interactives calls DEFAULT argument should be provided as a string,\ni.e the `symbol-name' of any existing symbol.\n\n(fn DEFAULT)" t nil)

(autoload 'helm-manage-advice "helm-elisp" "\
Preconfigured `helm' to disable/enable function advices.\n\n(fn)" t nil)

(autoload 'helm-locate-library "helm-elisp" "\
Preconfigured helm to locate elisp libraries.\n\n(fn)" t nil)

(autoload 'helm-timers "helm-elisp" "\
Preconfigured `helm' for timers.\n\n(fn)" t nil)

(autoload 'helm-complex-command-history "helm-elisp" "\
Preconfigured helm for complex command history.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-elisp" '("helm-" "with-helm-show-completion")))

;;;***

;;;### (autoloads nil "helm-elisp-package" "helm-elisp-package.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from helm-elisp-package.el

(autoload 'helm-list-elisp-packages "helm-elisp-package" "\
Preconfigured helm for listing and handling emacs packages.\n\n(fn ARG)" t nil)

(autoload 'helm-list-elisp-packages-no-fetch "helm-elisp-package" "\
Preconfigured helm for emacs packages.\n\nSame as `helm-list-elisp-packages' but don't fetch packages on remote.\nCalled with a prefix ARG always fetch packages on remote.\n\n(fn ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-elisp-package" '("helm-")))

;;;***

;;;### (autoloads nil "helm-eshell" "helm-eshell.el" (0 0 0 0))
;;; Generated autoloads from helm-eshell.el

(autoload 'helm-esh-pcomplete "helm-eshell" "\
Preconfigured helm to provide helm completion in eshell.\n\n(fn)" t nil)

(autoload 'helm-eshell-history "helm-eshell" "\
Preconfigured helm for eshell history.\n\n(fn)" t nil)

(autoload 'helm-eshell-prompts "helm-eshell" "\
Pre-configured `helm' to browse the prompts of the current Eshell.\n\n(fn)" t nil)

(autoload 'helm-eshell-prompts-all "helm-eshell" "\
Pre-configured `helm' to browse the prompts of all Eshell sessions.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-eshell" '("helm-e")))

;;;***

;;;### (autoloads nil "helm-eval" "helm-eval.el" (0 0 0 0))
;;; Generated autoloads from helm-eval.el

(autoload 'helm-eval-expression "helm-eval" "\
Preconfigured helm for `helm-source-evaluation-result'.\n\n(fn ARG)" t nil)

(autoload 'helm-eval-expression-with-eldoc "helm-eval" "\
Preconfigured helm for `helm-source-evaluation-result' with `eldoc' support. \n\n(fn)" t nil)

(autoload 'helm-calcul-expression "helm-eval" "\
Preconfigured helm for `helm-source-calculation-result'.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-eval" '("helm-")))

;;;***

;;;### (autoloads nil "helm-external" "helm-external.el" (0 0 0 0))
;;; Generated autoloads from helm-external.el

(autoload 'helm-run-external-command "helm-external" "\
Preconfigured `helm' to run External PROGRAM asyncronously from Emacs.\nIf program is already running exit with error.\nYou can set your own list of commands with\n`helm-external-commands-list'.\n\n(fn PROGRAM)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-external" '("helm-")))

;;;***

;;;### (autoloads nil "helm-files" "helm-files.el" (0 0 0 0))
;;; Generated autoloads from helm-files.el

(autoload 'helm-projects-history "helm-files" "\
\n\n(fn)" t nil)

(autoload 'helm-browse-project "helm-files" "\
Preconfigured helm to browse projects.\nBrowse files and see status of project with its vcs.\nOnly HG and GIT are supported for now.\nFall back to `helm-browse-project-find-files'\nif current directory is not under control of one of those vcs.\nWith a prefix ARG browse files recursively, with two prefix ARG\nrebuild the cache.\nIf the current directory is found in the cache, start\n`helm-browse-project-find-files' even with no prefix ARG.\nNOTE: The prefix ARG have no effect on the VCS controlled directories.\n\nNeeded dependencies for VCS:\n<https://github.com/emacs-helm/helm-ls-git>\nand\n<https://github.com/emacs-helm/helm-ls-hg>.\n\n(fn ARG)" t nil)

(autoload 'helm-find-files "helm-files" "\
Preconfigured `helm' for helm implementation of `find-file'.\nCalled with a prefix arg show history if some.\nDon't call it from programs, use `helm-find-files-1' instead.\nThis is the starting point for nearly all actions you can do on files.\n\n(fn ARG)" t nil)

(autoload 'helm-delete-tramp-connection "helm-files" "\
Allow deleting tramp connection or marked tramp connections at once.\n\nThis replace `tramp-cleanup-connection' which is partially broken in\nemacs < to 25.1.50.1 (See Emacs Bug#24432).\n\nIt allows additionally to delete more than one connection at once.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-files" '("eshell-command-aliases-list" "helm-")))

;;;***

;;;### (autoloads nil "helm-find" "helm-find.el" (0 0 0 0))
;;; Generated autoloads from helm-find.el

(autoload 'helm-find "helm-find" "\
Preconfigured `helm' for the find shell command.\n\nRecursively find files whose names are matched by all specified\nglobbing PATTERNs under the current directory using the external\nprogram specified in `find-program' (usually \"find\").  Every\ninput PATTERN is silently wrapped into two stars: *PATTERN*.\n\nWith prefix argument, prompt for a directory to search.\n\nWhen user option `helm-findutils-search-full-path' is non-nil,\nmatch against complete paths, otherwise, against file names\nwithout directory part.\n\nThe (possibly empty) list of globbing PATTERNs can be followed by\nthe separator \"*\" plus any number of additional arguments that\nare passed to \"find\" literally.\n\n(fn ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-find" '("helm-")))

;;;***

;;;### (autoloads nil "helm-font" "helm-font.el" (0 0 0 0))
;;; Generated autoloads from helm-font.el

(autoload 'helm-select-xfont "helm-font" "\
Preconfigured `helm' to select Xfont.\n\n(fn)" t nil)

(autoload 'helm-ucs "helm-font" "\
Preconfigured helm for `ucs-names'.\n\nCalled with a prefix arg force reloading cache.\n\n(fn ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-font" '("helm-")))

;;;***

;;;### (autoloads nil "helm-for-files" "helm-for-files.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from helm-for-files.el

(autoload 'helm-for-files "helm-for-files" "\
Preconfigured `helm' for opening files.\nRun all sources defined in `helm-for-files-preferred-list'.\n\n(fn)" t nil)

(autoload 'helm-multi-files "helm-for-files" "\
Preconfigured helm like `helm-for-files' but running locate only on demand.\n\nAllow toggling back and forth from locate to others sources with\n`helm-multi-files-toggle-locate-binding' key.\nThis avoid launching needlessly locate when what you search is already\nfound.\n\n(fn)" t nil)

(autoload 'helm-recentf "helm-for-files" "\
Preconfigured `helm' for `recentf'.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-for-files" '("helm-")))

;;;***

;;;### (autoloads nil "helm-grep" "helm-grep.el" (0 0 0 0))
;;; Generated autoloads from helm-grep.el

(autoload 'helm-goto-precedent-file "helm-grep" "\
Go to precedent file in helm grep/etags buffers.\n\n(fn)" t nil)

(autoload 'helm-goto-next-file "helm-grep" "\
Go to precedent file in helm grep/etags buffers.\n\n(fn)" t nil)

(autoload 'helm-do-grep-ag "helm-grep" "\
Preconfigured helm for grepping with AG in `default-directory'.\nWith prefix-arg prompt for type if available with your AG version.\n\n(fn ARG)" t nil)

(autoload 'helm-grep-do-git-grep "helm-grep" "\
Preconfigured helm for git-grepping `default-directory'.\nWith a prefix arg ARG git-grep the whole repository.\n\n(fn ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-grep" '("helm-")))

;;;***

;;;### (autoloads nil "helm-help" "helm-help.el" (0 0 0 0))
;;; Generated autoloads from helm-help.el

(autoload 'helm-documentation "helm-help" "\
Preconfigured Helm for Helm documentation.\nWith a prefix arg refresh the documentation.\n\nFind here the documentation of all documented sources.\n\n(fn)" t nil)

(defvar helm-comp-read-mode-line "\\<helm-comp-read-map>C/\\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-help]:Help \\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-read-file-name-mode-line-string "\\<helm-read-file-map>\\[helm-help]:Help C/\\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend" "\
String displayed in mode-line in `helm-source-find-files'.")

(defvar helm-top-mode-line "\\<helm-top-map>\\[helm-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-help" '("helm-")))

;;;***

;;;### (autoloads nil "helm-id-utils" "helm-id-utils.el" (0 0 0 0))
;;; Generated autoloads from helm-id-utils.el

(autoload 'helm-gid "helm-id-utils" "\
Preconfigured helm for `gid' command line of `ID-Utils'.\nNeed A database created with the command `mkid'\nabove `default-directory'.\nNeed id-utils as dependency which provide `mkid', `gid' etc...\nSee <https://www.gnu.org/software/idutils/>.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-id-utils" '("helm-gid-")))

;;;***

;;;### (autoloads nil "helm-imenu" "helm-imenu.el" (0 0 0 0))
;;; Generated autoloads from helm-imenu.el

(autoload 'helm-imenu "helm-imenu" "\
Preconfigured `helm' for `imenu'.\n\n(fn)" t nil)

(autoload 'helm-imenu-in-all-buffers "helm-imenu" "\
Preconfigured helm for fetching imenu entries in all buffers with similar mode as current.\nA mode is similar as current if it is the same, it is derived i.e `derived-mode-p'\nor it have an association in `helm-imenu-all-buffer-assoc'.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-imenu" '("helm-")))

;;;***

;;;### (autoloads nil "helm-info" "helm-info.el" (0 0 0 0))
;;; Generated autoloads from helm-info.el

(autoload 'helm-info "helm-info" "\
Preconfigured `helm' for searching Info files' indices.\n\nWith a prefix argument \\[universal-argument], set REFRESH to non-nil.\n\nOptional parameter REFRESH, when non-nil, reevaluates\n`helm-default-info-index-list'.  If the variable has been\ncustomized, set it to its saved value.  If not, set it to its\nstandard value.  See `custom-reevaluate-setting' for more.\n\nREFRESH is useful when new Info files are installed.  If\n`helm-default-info-index-list' has not been customized, the new\nInfo files are made available.\n\n(fn &optional REFRESH)" t nil)

(autoload 'helm-info-at-point "helm-info" "\
Preconfigured `helm' for searching info at point.\nWith a prefix-arg insert symbol at point.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-info" '("helm-")))

;;;***

;;;### (autoloads nil "helm-locate" "helm-locate.el" (0 0 0 0))
;;; Generated autoloads from helm-locate.el

(autoload 'helm-projects-find-files "helm-locate" "\
Find files with locate in `helm-locate-project-list'.\nWith a prefix arg refresh the database in each project.\n\n(fn UPDATE)" t nil)

(autoload 'helm-locate "helm-locate" "\
Preconfigured `helm' for Locate.\nNote: you can add locate options after entering pattern.\nSee 'man locate' for valid options and also `helm-locate-command'.\n\nYou can specify a local database with prefix argument ARG.\nWith two prefix arg, refresh the current local db or create it\nif it doesn't exists.\n\nTo create a user specific db, use\n\"updatedb -l 0 -o db_path -U directory\".\nWhere db_path is a filename matched by\n`helm-locate-db-file-regexp'.\n\n(fn ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-locate" '("helm-")))

;;;***

;;;### (autoloads nil "helm-man" "helm-man.el" (0 0 0 0))
;;; Generated autoloads from helm-man.el

(autoload 'helm-man-woman "helm-man" "\
Preconfigured `helm' for Man and Woman pages.\nWith a prefix arg reinitialize the cache.\n\n(fn ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-man" '("helm-")))

;;;***

;;;### (autoloads nil "helm-misc" "helm-misc.el" (0 0 0 0))
;;; Generated autoloads from helm-misc.el

(autoload 'helm-world-time "helm-misc" "\
Preconfigured `helm' to show world time.\nDefault action change TZ environment variable locally to emacs.\n\n(fn)" t nil)

(autoload 'helm-insert-latex-math "helm-misc" "\
Preconfigured helm for latex math symbols completion.\n\n(fn)" t nil)

(autoload 'helm-ratpoison-commands "helm-misc" "\
Preconfigured `helm' to execute ratpoison commands.\n\n(fn)" t nil)

(autoload 'helm-stumpwm-commands "helm-misc" "\
Preconfigured helm for stumpwm commands.\n\n(fn)" t nil)

(autoload 'helm-minibuffer-history "helm-misc" "\
Preconfigured `helm' for `minibuffer-history'.\n\n(fn)" t nil)

(autoload 'helm-comint-input-ring "helm-misc" "\
Preconfigured `helm' that provide completion of `comint' history.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-misc" '("helm-")))

;;;***

;;;### (autoloads nil "helm-mode" "helm-mode.el" (0 0 0 0))
;;; Generated autoloads from helm-mode.el

(autoload 'helm-comp-read "helm-mode" "\
Read a string in the minibuffer, with helm completion.\n\nIt is helm `completing-read' equivalent.\n\n- PROMPT is the prompt name to use.\n\n- COLLECTION can be a list, vector, obarray or hash-table.\n  It can be also a function that receives three arguments:\n  the values string, predicate and t. See `all-completions' for more details.\n\nKeys description:\n\n- TEST: A predicate called with one arg i.e candidate.\n\n- INITIAL-INPUT: Same as input arg in `helm'.\n\n- PRESELECT: See preselect arg of `helm'.\n\n- DEFAULT: This option is used only for compatibility with regular\n  Emacs `completing-read' (Same as DEFAULT arg of `completing-read').\n\n- BUFFER: Name of helm-buffer.\n\n- MUST-MATCH: Candidate selected must be one of COLLECTION.\n\n- FUZZY: Enable fuzzy matching.\n\n- REVERSE-HISTORY: When non--nil display history source after current\n  source completion.\n\n- REQUIRES-PATTERN: Same as helm attribute, default is 0.\n\n- HISTORY: A list containing specific history, default is nil.\n  When it is non--nil, all elements of HISTORY are displayed in\n  a special source before COLLECTION.\n\n- INPUT-HISTORY: A symbol. the minibuffer input history will be\n  stored there, if nil or not provided, `minibuffer-history'\n  will be used instead.\n\n- CASE-FOLD: Same as `helm-case-fold-search'.\n\n- DEL-INPUT: Boolean, when non--nil (default) remove the partial\n  minibuffer input from HISTORY is present.\n\n- PERSISTENT-ACTION: A function called with one arg i.e candidate.\n\n- PERSISTENT-HELP: A string to document PERSISTENT-ACTION.\n\n- MODE-LINE: A string or list to display in mode line.\n  Default is `helm-comp-read-mode-line'.\n\n- KEYMAP: A keymap to use in this `helm-comp-read'.\n  (the keymap will be shared with history source)\n\n- NAME: The name related to this local source.\n\n- HEADER-NAME: A function to alter NAME, see `helm'.\n\n- EXEC-WHEN-ONLY-ONE: Bound `helm-execute-action-at-once-if-one'\n  to non--nil. (possibles values are t or nil).\n\n- VOLATILE: Use volatile attribute.\n\n- SORT: A predicate to give to `sort' e.g `string-lessp'\n  Use this only on small data as it is ineficient.\n  If you want to sort faster add a sort function to\n  FC-TRANSFORMER.\n  Note that FUZZY when enabled is already providing a sort function.\n\n- FC-TRANSFORMER: A `filtered-candidate-transformer' function\n  or a list of functions.\n\n- HIST-FC-TRANSFORMER: A `filtered-candidate-transformer'\n  function for the history source.\n\n- MARKED-CANDIDATES: If non--nil return candidate or marked candidates as a list.\n\n- NOMARK: When non--nil don't allow marking candidates.\n\n- ALISTP: (default is non--nil) See `helm-comp-read-get-candidates'.\n\n- CANDIDATES-IN-BUFFER: when non--nil use a source build with\n  `helm-source-in-buffer' which is much faster.\n  Argument VOLATILE have no effect when CANDIDATES-IN-BUFFER is non--nil.\n\n- MATCH-PART: Allow matching only one part of candidate.\n  See match-part documentation in `helm-source'.\n\n- ALLOW-NEST: Allow nesting this `helm-comp-read' in a helm session.\n  See `helm'.\n\n- MULTILINE: See multiline in `helm-source'.\n\nAny prefix args passed during `helm-comp-read' invocation will be recorded\nin `helm-current-prefix-arg', otherwise if prefix args were given before\n`helm-comp-read' invocation, the value of `current-prefix-arg' will be used.\nThat's mean you can pass prefix args before or after calling a command\nthat use `helm-comp-read' See `helm-M-x' for example.\n\n(fn PROMPT COLLECTION &key TEST INITIAL-INPUT DEFAULT PRESELECT (BUFFER \"*Helm Completions*\") MUST-MATCH FUZZY REVERSE-HISTORY (REQUIRES-PATTERN 0) HISTORY INPUT-HISTORY (CASE-FOLD helm-comp-read-case-fold-search) (DEL-INPUT t) (PERSISTENT-ACTION nil) (PERSISTENT-HELP \"DoNothing\") (MODE-LINE helm-comp-read-mode-line) HELP-MESSAGE (KEYMAP helm-comp-read-map) (NAME \"Helm Completions\") HEADER-NAME CANDIDATES-IN-BUFFER MATCH-PART EXEC-WHEN-ONLY-ONE QUIT-WHEN-NO-CAND (VOLATILE t) SORT FC-TRANSFORMER HIST-FC-TRANSFORMER MARKED-CANDIDATES NOMARK (ALISTP t) (CANDIDATE-NUMBER-LIMIT helm-candidate-number-limit) MULTILINE ALLOW-NEST)" nil nil)

(autoload 'helm-read-file-name "helm-mode" "\
Read a file name with helm completion.\nIt is helm `read-file-name' emulation.\n\nArgument PROMPT is the default prompt to use.\n\nKeys description:\n\n- NAME: Source name, default to \"Read File Name\".\n\n- INITIAL-INPUT: Where to start read file name, default to `default-directory'.\n\n- BUFFER: `helm-buffer' name default to \"*Helm Completions*\".\n\n- TEST: A predicate called with one arg 'candidate'.\n\n- CASE-FOLD: Same as `helm-case-fold-search'.\n\n- PRESELECT: helm preselection.\n\n- HISTORY: Display HISTORY in a special source.\n\n- MUST-MATCH: Can be 'confirm, nil, or t.\n\n- FUZZY: Enable fuzzy matching when non-nil (Enabled by default).\n\n- MARKED-CANDIDATES: When non--nil return a list of marked candidates.\n\n- NOMARK: When non--nil don't allow marking candidates.\n\n- ALISTP: Don't use `all-completions' in history (take effect only on history).\n\n- PERSISTENT-ACTION-IF: a persistent if action function.\n\n- PERSISTENT-HELP: persistent help message.\n\n- MODE-LINE: A mode line message, default is `helm-read-file-name-mode-line-string'.\n\n(fn PROMPT &key (NAME \"Read File Name\") (INITIAL-INPUT default-directory) (BUFFER \"*Helm file completions*\") TEST (CASE-FOLD helm-file-name-case-fold-search) PRESELECT HISTORY MUST-MATCH (FUZZY t) DEFAULT MARKED-CANDIDATES (CANDIDATE-NUMBER-LIMIT helm-ff-candidate-number-limit) NOMARK (ALISTP t) (PERSISTENT-ACTION-IF \\='helm-find-files-persistent-action-if) (PERSISTENT-HELP \"Hit1 Expand Candidate, Hit2 or (C-u) Find file\") (MODE-LINE helm-read-file-name-mode-line-string))" nil nil)

(defvar helm-mode nil "\
Non-nil if Helm mode is enabled.\nSee the `helm-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `helm-mode'.")

(custom-autoload 'helm-mode "helm-mode" nil)

(autoload 'helm-mode "helm-mode" "\
Toggle generic helm completion.\n\nAll functions in Emacs that use `completing-read'\nor `read-file-name' and friends will use helm interface\nwhen this mode is turned on.\nHowever you can modify this behavior for functions of your choice\nwith `helm-completing-read-handlers-alist'.\n\nCalled with a positive arg, turn on unconditionally, with a\nnegative arg turn off.\nYou can turn it on with `helm-mode'.\n\nSome crap emacs functions may not be supported,\ne.g `ffap-alternate-file' and maybe others\nYou can add such functions to `helm-completing-read-handlers-alist'\nwith a nil value.\n\nAbout `ido-mode':\nWhen you are using `helm-mode', DO NOT use `ido-mode', instead if you\nwant some commands use `ido' add these commands to\n`helm-completing-read-handlers-alist' with ido as value.\n\nNote: This mode is incompatible with Emacs23.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-mode" '("helm-")))

;;;***

;;;### (autoloads nil "helm-net" "helm-net.el" (0 0 0 0))
;;; Generated autoloads from helm-net.el

(autoload 'helm-browse-url-firefox "helm-net" "\
Same as `browse-url-firefox' but detach from emacs.\n\nSo when you quit emacs you can keep your firefox session open\nand not be prompted to kill firefox process.\n\nNOTE: Probably not supported on some systems (e.g Windows).\n\n(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-opera "helm-net" "\
Browse URL with opera browser and detach from emacs.\n\nSo when you quit emacs you can keep your opera session open\nand not be prompted to kill opera process.\n\nNOTE: Probably not supported on some systems (e.g Windows).\n\n(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-chromium "helm-net" "\
Browse URL with google chrome browser.\n\n(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-uzbl "helm-net" "\
Browse URL with uzbl browser.\n\n(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-conkeror "helm-net" "\
Browse URL with conkeror browser.\n\n(fn URL &optional IGNORE)" t nil)

(autoload 'helm-surfraw "helm-net" "\
Preconfigured `helm' to search PATTERN with search ENGINE.\n\n(fn PATTERN ENGINE)" t nil)

(autoload 'helm-google-suggest "helm-net" "\
Preconfigured `helm' for google search with google suggest.\n\n(fn)" t nil)

(autoload 'helm-wikipedia-suggest "helm-net" "\
Preconfigured `helm' for Wikipedia lookup with Wikipedia suggest.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-net" '("helm-")))

;;;***

;;;### (autoloads nil "helm-org" "helm-org.el" (0 0 0 0))
;;; Generated autoloads from helm-org.el

(autoload 'helm-org-agenda-files-headings "helm-org" "\
Preconfigured helm for org files headings.\n\n(fn)" t nil)

(autoload 'helm-org-in-buffer-headings "helm-org" "\
Preconfigured helm for org buffer headings.\n\n(fn)" t nil)

(autoload 'helm-org-parent-headings "helm-org" "\
Preconfigured helm for org headings that are parents of the\ncurrent heading.\n\n(fn)" t nil)

(autoload 'helm-org-capture-templates "helm-org" "\
Preconfigured helm for org templates.\n\n(fn)" t nil)

(autoload 'helm-org-completing-read-tags "helm-org" "\
Completing read function for Org tags.\n\nThis function is used as a `completing-read' function in\n`helm-completing-read-handlers-alist' by `org-set-tags' and\n`org-capture'.\n\nNOTE: Org tag completion will work only if you disable org fast tag\nselection, see (info \"(org) setting tags\").\n\n(fn PROMPT COLLECTION PRED REQ INITIAL HIST DEF INHERIT-INPUT-METHOD NAME BUFFER)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-org" '("helm-")))

;;;***

;;;### (autoloads nil "helm-regexp" "helm-regexp.el" (0 0 0 0))
;;; Generated autoloads from helm-regexp.el

(autoload 'helm-moccur-mode "helm-regexp" "\
Major mode to provide actions in helm moccur saved buffer.\n\nSpecial commands:\n\\{helm-moccur-mode-map}\n\n(fn)" t nil)

(autoload 'helm-regexp "helm-regexp" "\
Preconfigured helm to build regexps.\n`query-replace-regexp' can be run from there against found regexp.\n\n(fn)" t nil)

(autoload 'helm-occur "helm-regexp" "\
Preconfigured helm for searching lines matching pattern in `current-buffer'.\n\nWhen `helm-source-occur' is member of\n`helm-sources-using-default-as-input' which is the default,\nsymbol at point is searched at startup.\n\nWhen a region is marked search only in this region by narrowing.\n\nTo search in multiples buffers start from one of the commands listing\nbuffers (i.e. a helm command using `helm-source-buffers-list' like\n`helm-mini') and use the multi occur buffers action.\n\nThis is the helm implementation that collect lines matching pattern\nlike vanilla emacs `occur' but have nothing to do with it, the search\nengine beeing completely different.\n\n(fn)" t nil)

(autoload 'helm-occur-from-isearch "helm-regexp" "\
Invoke `helm-occur' from isearch.\n\n(fn)" t nil)

(autoload 'helm-multi-occur-from-isearch "helm-regexp" "\
Invoke `helm-multi-occur' from isearch.\n\nWith a prefix arg, reverse the behavior of\n`helm-moccur-always-search-in-current'.\nThe prefix arg can be set before calling\n`helm-multi-occur-from-isearch' or during the buffer selection.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-regexp" '("helm-")))

;;;***

;;;### (autoloads nil "helm-ring" "helm-ring.el" (0 0 0 0))
;;; Generated autoloads from helm-ring.el

(autoload 'helm-mark-ring "helm-ring" "\
Preconfigured `helm' for `helm-source-mark-ring'.\n\n(fn)" t nil)

(autoload 'helm-global-mark-ring "helm-ring" "\
Preconfigured `helm' for `helm-source-global-mark-ring'.\n\n(fn)" t nil)

(autoload 'helm-all-mark-rings "helm-ring" "\
Preconfigured `helm' for `helm-source-global-mark-ring' and `helm-source-mark-ring'.\n\n(fn)" t nil)

(autoload 'helm-register "helm-ring" "\
Preconfigured `helm' for Emacs registers.\n\n(fn)" t nil)

(autoload 'helm-show-kill-ring "helm-ring" "\
Preconfigured `helm' for `kill-ring'.\nIt is drop-in replacement of `yank-pop'.\n\nFirst call open the kill-ring browser, next calls move to next line.\n\n(fn)" t nil)

(autoload 'helm-execute-kmacro "helm-ring" "\
Preconfigured helm for keyboard macros.\nDefine your macros with `f3' and `f4'.\nSee (info \"(emacs) Keyboard Macros\") for detailed infos.\nThis command is useful when used with persistent action.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-ring" '("helm-")))

;;;***

;;;### (autoloads nil "helm-semantic" "helm-semantic.el" (0 0 0 0))
;;; Generated autoloads from helm-semantic.el

(autoload 'helm-semantic "helm-semantic" "\
Preconfigured `helm' for `semantic'.\nIf ARG is supplied, pre-select symbol at point instead of current\n\n(fn ARG)" t nil)

(autoload 'helm-semantic-or-imenu "helm-semantic" "\
Preconfigured helm for `semantic' or `imenu'.\nIf ARG is supplied, pre-select symbol at point instead of current\nsemantic tag in scope.\n\nIf `semantic-mode' is active in the current buffer, then use\nsemantic for generating tags, otherwise fall back to `imenu'.\nFill in the symbol at point by default.\n\n(fn ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-semantic" '("helm-s")))

;;;***

;;;### (autoloads nil "helm-sys" "helm-sys.el" (0 0 0 0))
;;; Generated autoloads from helm-sys.el

(defvar helm-top-poll-mode nil "\
Non-nil if Helm-Top-Poll mode is enabled.\nSee the `helm-top-poll-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `helm-top-poll-mode'.")

(custom-autoload 'helm-top-poll-mode "helm-sys" nil)

(autoload 'helm-top-poll-mode "helm-sys" "\
Refresh automatically helm top buffer once enabled.\n\n(fn &optional ARG)" t nil)

(autoload 'helm-top "helm-sys" "\
Preconfigured `helm' for top command.\n\n(fn)" t nil)

(autoload 'helm-list-emacs-process "helm-sys" "\
Preconfigured `helm' for emacs process.\n\n(fn)" t nil)

(autoload 'helm-xrandr-set "helm-sys" "\
Preconfigured helm for xrandr.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-sys" '("helm-")))

;;;***

;;;### (autoloads nil "helm-tags" "helm-tags.el" (0 0 0 0))
;;; Generated autoloads from helm-tags.el

(autoload 'helm-etags-select "helm-tags" "\
Preconfigured helm for etags.\nIf called with a prefix argument REINIT\nor if any of the tag files have been modified, reinitialize cache.\n\nThis function aggregates three sources of tag files:\n\n  1) An automatically located file in the parent directories,\n     by `helm-etags-get-tag-file'.\n  2) `tags-file-name', which is commonly set by `find-tag' command.\n  3) `tags-table-list' which is commonly set by `visit-tags-table' command.\n\n(fn REINIT)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-tags" '("helm-")))

;;;***

;;;### (autoloads nil "helm-types" "helm-types.el" (0 0 0 0))
;;; Generated autoloads from helm-types.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-types" '("helm-")))

;;;***

;;;### (autoloads nil "helm-utils" "helm-utils.el" (0 0 0 0))
;;; Generated autoloads from helm-utils.el

(defvar helm-popup-tip-mode nil "\
Non-nil if Helm-Popup-Tip mode is enabled.\nSee the `helm-popup-tip-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `helm-popup-tip-mode'.")

(custom-autoload 'helm-popup-tip-mode "helm-utils" nil)

(autoload 'helm-popup-tip-mode "helm-utils" "\
Show help-echo informations in a popup tip at end of line.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-utils" '("helm-" "with-helm-display-marked-candidates")))

;;;***

;;;### (autoloads nil "helm-x-files" "helm-x-files.el" (0 0 0 0))
;;; Generated autoloads from helm-x-files.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-x-files" '("helm-")))

;;;***

;;;### (autoloads nil nil ("helm-easymenu.el" "helm-pkg.el") (0 0
;;;;;;  0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; helm-autoloads.el ends here
