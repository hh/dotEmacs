;; ;; trac-wiki
;; (require 'trac-wiki)
;; (autoload 'trac-wiki "trac-wiki" "Trac wiki editing entry-point." t)
(load-file "~/.emacs.d/xml-rpc.el")
(load-file "~/.emacs.d/trac-wiki.el")
(trac-wiki-define-project "cc" "https://s.codecafe.com/trac/codecafe/" t)
(trac-wiki-define-project "cit" "https://trac.isgenesis.com/it/" t)
