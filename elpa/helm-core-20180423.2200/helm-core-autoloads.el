;;; helm-core-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "helm" "helm.el" (0 0 0 0))
;;; Generated autoloads from helm.el

(autoload 'helm-define-multi-key "helm" "\
In KEYMAP, define key sequence KEY for function list FUNCTIONS.\nEach function runs sequentially for each KEY press.\nIf DELAY is specified, switch back to initial function of FUNCTIONS list\nafter DELAY seconds.\nThe functions in FUNCTIONS list take no args.\ne.g\n    (defun foo ()\n      (interactive)\n      (message \"Run foo\"))\n    (defun bar ()\n      (interactive)\n      (message \"Run bar\"))\n    (defun baz ()\n      (interactive)\n      (message \"Run baz\"))\n\n(helm-define-multi-key global-map (kbd \"<f5> q\") '(foo bar baz) 2)\n\nEach time \"<f5> q\" is pressed, the next function is executed. Waiting\nmore than 2 seconds between key presses switches back to executing the first\nfunction on the next hit.\n\n(fn KEYMAP KEY FUNCTIONS &optional DELAY)" nil nil)

(autoload 'helm-multi-key-defun "helm" "\
Define NAME as a multi-key command running FUNS.\nAfter DELAY seconds, the FUNS list is reinitialized.\nSee `helm-define-multi-key'.\n\n(fn NAME DOCSTRING FUNS &optional DELAY)" nil t)

(function-put 'helm-multi-key-defun 'lisp-indent-function '2)

(autoload 'helm-define-key-with-subkeys "helm" "\
Defines in MAP a KEY and SUBKEY to COMMAND.\n\nThis allows typing KEY to call COMMAND the first time and\ntype only SUBKEY on subsequent calls.\n\nArg MAP is the keymap to use, SUBKEY is the initial short key-binding to\ncall COMMAND.\n\nArg OTHER-SUBKEYS is an alist specifying other short key-bindings\nto use once started e.g:\n\n    (helm-define-key-with-subkeys global-map\n       (kbd \"C-x v n\") ?n 'git-gutter:next-hunk '((?p . git-gutter:previous-hunk)))\n\n\nIn this example, `C-x v n' will run `git-gutter:next-hunk'\nsubsequent \"n\"'s run this command again\nand subsequent \"p\"'s run `git-gutter:previous-hunk'.\n\nIf specified PROMPT can be displayed in minibuffer to\ndescribe SUBKEY and OTHER-SUBKEYS.\nArg EXIT-FN specifies a function to run on exit.\n\nFor any other keys pressed, run their assigned command as defined\nin MAP and then exit the loop running EXIT-FN, if specified.\n\nNOTE: SUBKEY and OTHER-SUBKEYS bindings support only char syntax and\nvectors, so don't use strings to define them.\n\n(fn MAP KEY SUBKEY COMMAND &optional OTHER-SUBKEYS PROMPT EXIT-FN)" nil nil)

(function-put 'helm-define-key-with-subkeys 'lisp-indent-function '1)

(autoload 'helm-debug-open-last-log "helm" "\
Open helm log file or buffer of last helm session.\n\n(fn)" t nil)

(autoload 'helm "helm" "\
Main function to execute helm sources.\n\nPLIST is a list like\n\n(:key1 val1 :key2 val2 ...)\n\n or\n\n(&optional sources input prompt resume preselect\n            buffer keymap default history allow-nest).\n\n** Keywords\n\nKeywords supported:\n\n- :sources\n- :input\n- :prompt\n- :resume\n- :preselect\n- :buffer\n- :keymap\n- :default\n- :history\n- :allow-nest\n\nExtra LOCAL-VARS keywords are supported, see the \"** Other\nkeywords\" section below.\n\nBasic keywords are the following:\n\n*** :sources\n\nOne of the following:\n\n- List of sources\n- Symbol whose value is a list of sources\n- Alist representing a Helm source.\n  - In this case the source has no name and is referenced in\n    `helm-sources' as a whole alist.\n\n*** :input\n\nInitial input of minibuffer (temporary value of `helm-pattern')\n\n*** :prompt\n\nMinibuffer prompt. Default value is `helm--prompt'.\n\n*** :resume\n\nIf t, allow resumption of the previous session of this Helm\ncommand, skipping initialization.\n\nIf 'noresume, this instance of `helm' cannot be resumed.\n\n*** :preselect\n\nInitially selected candidate (string or regexp).\n\n*** :buffer\n\nBuffer name for this Helm session. `helm-buffer' will take this value.\n\n*** :keymap\n\n[Obsolete]\n\nKeymap used at the start of this Helm session.\n\nIt is overridden by keymaps specified in sources, and is kept\nonly for backward compatibility.\n\nKeymaps should be specified in sources using the :keymap slot\ninstead. See `helm-source'.\n\nThis keymap is not restored by `helm-resume'.\n\n*** :default\n\nDefault value inserted into the minibuffer with\n\\<minibuffer-local-map>\\[next-history-element].\n\nIt can be a string or a list of strings, in this case\n\\<minibuffer-local-map>\\[next-history-element] cycles through\nthe list items, starting with the first.\n\nIf nil, `thing-at-point' is used.\n\nIf `helm--maybe-use-default-as-input' is non-`nil', display is\nupdated using this value, unless :input is specified, in which\ncase that value is used instead.\n\n*** :history\n\nMinibuffer input, by default, is pushed to `minibuffer-history'.\n\nWhen an argument HISTORY is provided, input is pushed to\nHISTORY. HISTORY should be a valid symbol.\n\n*** :allow-nest\n\nAllow running this Helm command in a running Helm session.\n\n** Other keywords\n\nOther keywords are interpreted as local variables of this Helm\nsession. The `helm-' prefix can be omitted. For example,\n\n(helm :sources 'helm-source-buffers-list\n       :buffer \"*helm buffers*\"\n       :candidate-number-limit 10)\n\nstarts a Helm session with the variable\n`helm-candidate-number-limit' set to 10.\n\n** Backward compatibility\n\nFor backward compatibility, positional parameters are\nsupported:\n\n(helm sources input prompt resume preselect\n       buffer keymap default history allow-nest)\n\nHowever, the use of non-keyword args is deprecated.\n\n(fn &key SOURCES INPUT PROMPT RESUME PRESELECT BUFFER KEYMAP DEFAULT HISTORY ALLOW-NEST OTHER-LOCAL-VARS)" nil nil)

(autoload 'helm-cycle-resume "helm" "\
Cycle in `helm-buffers' list and resume when waiting more than 1.2s.\n\n(fn)" t nil)

(autoload 'helm-other-buffer "helm" "\
Simplified `helm' interface with other `helm-buffer'.\nCall `helm' only with ANY-SOURCES and ANY-BUFFER as args.\n\n(fn ANY-SOURCES ANY-BUFFER)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm" '("copy-region-as-kill--advice" "cua-delete-region--advice" "helm-" "with-helm-")))

;;;***

;;;### (autoloads nil "helm-lib" "helm-lib.el" (0 0 0 0))
;;; Generated autoloads from helm-lib.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-lib" '("helm-" "with-helm-")))

;;;***

;;;### (autoloads nil "helm-multi-match" "helm-multi-match.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from helm-multi-match.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-multi-match" '("helm-m")))

;;;***

;;;### (autoloads nil "helm-source" "helm-source.el" (0 0 0 0))
;;; Generated autoloads from helm-source.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-source" '("helm-")))

;;;***

;;;### (autoloads nil nil ("helm-core-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; helm-core-autoloads.el ends here
