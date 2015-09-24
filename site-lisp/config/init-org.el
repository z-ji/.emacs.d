;;Org Mode
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)
;;org todo keywords
(setq org-todo-keywords
      '((sequence "TODO(t)" "QUESTION(q)" "FUNNY(f)" "REVIEW" "|" "DONE(d)" "KONWLEDGE(k)" "|" "TASK(T)")
	(Sequence "TO SHARE(s)" "BUG(b)" "KNOWNCAUSE(k)" "WARN(w)" "REPORT(r)" "|" "FIXED(f)")
	(sequence "|" "CANCELED(c)")))
;;(setq org-log-done 'note)
(add-hook 'message-mode-hook 'turn-on-orgstruct)
(add-hook 'message-mode-hook 'turn-on-orgstruct++)
;;---------Org-mode export html with mathjax-----
(setq org-html-mathjax-options '((path "http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML")))
;;or use in a sigle file with org-mode  #+HTML_MATHJAX: align:"left" mathml:t path:""
(provide 'init-org)
