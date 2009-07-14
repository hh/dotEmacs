;; ;; When mutt calls us for editing, use a nice mail mode....
(setq
      auto-mode-alist
     ( cons '("/tmp/mutt.*$" . mail-mode) auto-mode-alist )
   )
(add-hook 'mail-mode-hook 'turn-on-auto-fill)
