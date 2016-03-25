;;Org Mode
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)
;;org todo keywords
(setq org-todo-keywords
      '((sequence "TODO(t)" "QUESTION(q)" "FUNNY(f)" "REVIEW" "|" "DONE(d)" "KONWLEDGE(k)" "|" "TASK(T)" "NOTE(n)")
	(Sequence "TO SHARE(s)" "BUG(b)" "KNOWNCAUSE(k)" "WARN(w)" "REPORT(r)" "|" "FIXED(f)")
	(sequence "|" "CANCELED(c)")))
(add-hook 'message-mode-hook 'turn-on-orgstruct)
(add-hook 'message-mode-hook 'turn-on-orgstruct++)
;;---------Org-mode export html with mathjax-----
(setq org-html-mathjax-options '((path "http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML")))
;;or use in a sigle file with org-mode  #+HTML_MATHJAX: align:"left" mathml:t path:""
;;set the C-c . of the command org-time-stamp in a consistent time format
;;(setq-default org-display-custom-times 't)
;;(setq org-time-stamp-custom-formats '("<%Y-%m-%d %a>" . "<%Y-%m-%d %a %H:%M>"))
;;set the org babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 (quote ((dot . t)(shell . t) (calc . t) (java . t))))
;;log closing item
(setq org-log-done 'time)
;;record an additional note together with the clock-out timestamp
(setq org-log-note-clock-out t)
(provide 'init-org)
