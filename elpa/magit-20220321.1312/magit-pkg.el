(define-package "magit" "20220321.1312" "A Git porcelain inside Emacs."
  '((emacs "25.1")
    (dash "20210826")
    (git-commit "20211004")
    (magit-section "20211004")
    (transient "20210920")
    (with-editor "20211001"))
  :commit "b32521d5432b5fbc33a2e47b72f2258bf98cb8b4" :authors
  '(("Marius Vollmer" . "marius.vollmer@gmail.com")
    ("Jonas Bernoulli" . "jonas@bernoul.li"))
  :maintainer
  '("Jonas Bernoulli" . "jonas@bernoul.li")
  :keywords
  '("git" "tools" "vc")
  :url "https://github.com/magit/magit")
;; Local Variables:
;; no-byte-compile: t
;; End:
