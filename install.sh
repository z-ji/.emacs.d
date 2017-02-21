#!/bin/sh
git clone --recursive https://github.com/ji-zhou/.emacs.d.git ~/.emacs.d &
sleep 1
cd ~/.emacs.d/site-lisp/extensions/benchmark-init-el & make
