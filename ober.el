;; ;; ;;{{{ VI style paren matching.
;; ;; (defun match-paren (arg)
;; ;;   "Go to the matching paren if on a paren; otherwise insert %."
;; ;;   (interactive "p")
;; ;;   (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
;; ;; 	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
;; ;; 	(t (self-insert-command (or arg 1)))))
;; ;; ;;}}}
;; ;; (global-set-key "%" 'match-paren)	; vi style paren matching.


;; ;; (defun autocompile ()
;; ;;   "compile itself if ~/.emacs"
;; ;;   (interactive)
;; ;;   (if (string= (buffer-file-name) (concat default-directory ".emacs"))
;; ;;       (byte-compile-file (buffer-file-name))))
;; ;; (add-hook 'after-save-hook 'autocompile)

;; ;; ;;{{{ grep visited buffers

;; ;; ;;(defun visited-files (&optional predicate)
;; ;; ;;  "Return a list of all the files being visited in any buffer.
;; ;; ;;  If the optional PREDICATE is specified, only file names satisfying it
;; ;; ;;  are included in the list."
;; ;; ;;  (apply `nconc
;; ;; ;;    (mapcar (lambda (buffer)
;; ;; ;;         (let ((file (buffer-file-name buffer)))
;; ;; ;;           (if (and file
;; ;; ;;               (or (null predicate)
;; ;; ;;              (funcall predicate file)))
;; ;; ;;          (list file))))
;; ;; ;;       (buffer-list))))

;; ;; 					;
;; ;; ;;(defun local-visited-files ()
;; ;; ;;  "Return a list of the local files being visited in any buffer."
;; ;; ;;  (visited-files (cond ((featurep `ange-ftp)
;; ;; ;;         (lambda (file)
;; ;; ;;           (not (ange-ftp-ftp-name file))))
;; ;; 					; ;            ((featurep `efs)
;; ;; ;;         (lambda (file)
;; ;; 					; ;          (not (efs-ftp-path file))))
;; ;; ;;             (t nil))))

;; ;; ;;(defun grep-visited-files (command)
;; ;; ;;  "*Run `grep` COMMAND on all visited files."
;; ;; 					; ; (interactive
;; ;; ;;   (let* ((directory-abbrev-alist
;; ;; ;;      (cons (cons (expand-file-name default-directory)
;; ;; ;;             "./")
;; ;; ;;       directory-abbrev-alist))
;; ;; ;;     (local-visited-files
;; ;; ;;      (mapcar `abbreviate-file-name
;; ;; ;;         (local-visited-files))))
;; ;; ;;     (list (read-from-minibuffer "Run grep (like this): "
;; ;; ;;             (cons (mapconcat `identity
;; ;; ;;                    (cons grep-command
;; ;; ;;                     local-visited-files)
;; ;; ;;                    " ")
;; ;; ;;                   (1+ (length grep-command)))
;; ;; ;;             nil nil `grep-history))))
;; ;; ;;  (grep command))
;; ;; ;;}}}

;; make certain things display in a new buffer window
;; ;; (setq special-display-buffer-names (nconc '("*Backtrace*"
;; ;; 					    "*VC-log*"
;; ;; 					    "*cscope*"
;; ;; 					    "*compile*"
;; ;; 					    "*grep*")
;; ;; 					  special-display-buffer-names) )

;; ;; (load-file "~/elisp/psvn.el")
;; ;; ;;(setq compile-command "export QTDIR=/usr/pkg/qt4; export PATH=/usr/pkg/qt4/bin:$PATH;qmake -project && qmake && make")
;; ;; (setq compile-command "/root/luci/trunk/soap/soap_unittest.rb")

;; ;; (display-time)
;; ;; ;(server-start)
;; ;; (require 'doc-view)
;; ;; (fset 'yes-or-no-p 'y-or-n-p)
;; ;; ;;(plan)
;; ;; (setq transient-mark-mode t)

;; ;; (windmove-default-keybindings 'meta)
;; ;; (setq ido-enable-flex-matching t)

;; ;; (require 'w3m-load)
;; ;; (setq mail-user-agent "mh-e-user-agent")
;; ;; (setq read-mail-command "mh-rmail")
;; ;; (setq browse-url-browser-function 'w3m-browse-url)
;; ;; (autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;; ;; (global-set-key "\C-xm" 'browse-url-at-point)

;; ;; (setq mp3play-dirlist '("~/mp3"))
;; ;; (autoload 'mp3play "mp3play" nil t)

;; ;; (if (fboundp 'blink-cursor-mode) (blink-cursor-mode 0))
;; ;; (setq backup-directory-alist '(("." . "~/.emacs-backups")))

;; ;; (defun my-getmail () (interactive)(shell-command "/stick/gm &")) (global-set-key [(f10)] 'my-getmail)

;; ;; (add-hook 'write-file-hooks
;; ;; 'delete-trailing-whitespace)

;; ;; (load-file "~/elisp/snippet.el")
;; ;; (load-file "~/elisp/find-recursive.el")

;; ;; (load-file "~/elisp/php-mode.el")

;; ;; ;; Angry Fruit Salid here
;; ;;  (defun egoge-wash-out-colour (colour &optional degree)
;; ;;   "Return a colour string specifying a washed-out version of COLOUR."
;; ;;   (let ((basec (color-values
;; ;; 		(face-attribute 'default :foreground)))
;; ;; 	(col (color-values colour))
;; ;; 	(list nil))
;; ;;     (unless degree (setq degree 2))
;; ;;     (while col
;; ;;       (push (/ (/ (+ (pop col)
;; ;; 		     (* degree (pop basec)))
;; ;; 		  (1+ degree))
;; ;; 	       256)
;; ;; 	    list))
;; ;;     (apply 'format "#%02x%02x%02x" (nreverse list))))

;; ;;  (defun egoge-wash-out-face (face &optional degree)
;; ;;    "Make the foreground colour of FACE appear a bit more pale."
;; ;;    (let ((colour (face-attribute face :foreground)))
;; ;;      (unless (eq colour 'unspecified)
;; ;;        (set-face-attribute face nil
;; ;;  			  :foreground (egoge-wash-out-colour colour degree)))))

;; ;;  (defun egoge-find-faces (regexp)
;; ;;    "Return a list of all faces whose names match REGEXP."
;; ;;    (delq nil
;; ;;  	(mapcar (lambda (face)
;; ;;  		  (and (string-match regexp
;; ;;  				     (symbol-name face))
;; ;;  		       face))
;; ;;  		(face-list))))

;; ;;  (defun egoge-wash-out-fontlock-faces (&optional degree)
;; ;;    (mapc (lambda (elt)
;; ;;  	  (egoge-wash-out-face elt degree))
;; ;;  	(delq 'font-lock-warning-face
;; ;;  	      (egoge-find-faces "^font-lock"))))

;; ;;  (when (> (length (defined-colors)) 16)
;; ;;    (egoge-wash-out-fontlock-faces 1))



;; ;; ;; (if (not (eq (string-match "23" (emacs-version)) nil))
;; ;; ;;      (push '(font . "Pragmata-12:Medium") default-frame-alist)
;; ;; ;;      (push '(font . "Monaco-12:bold") default-frame-alist)
;; ;; ;; ;;     (push '(font . "7x13") default-frame-alist)
;; ;; ;; )

;; ;; ;;     (push '(font . "Liberation Mono-12:bold") default-frame-alist)
;; ;; (global-ede-mode 1)                      ; Enable the Project management system
;; ;; (semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion


;; ;; ;;raise hell



;; ;; ;; ;;
;; ;; ;; ;; In addition, you can also add this line too.
;; ;; ;; ;;
;; ;; ;; ;; ;; do overlay

;; ;; ;;(load-file "~/elisp/pabbrev.el")
;; ;; ;;(require 'pabbrev)


;; ;(load-file "~/elisp/tabbar.el")
;; ;(require 'tabbar-extension)
;; ;(tabbar-mode t)
;; ;; (setq tabbar-buffer-groups-function
;; ;;          (lambda ()
;; ;;             (list "All")))

;; ;; (set-face-attribute
;; ;;  'tabbar-default-face nil
;; ;;  :background "gray60")
;; ;; (set-face-attribute
;; ;;  'tabbar-unselected-face nil
;; ;;  :background "gray85"
;; ;;  :foreground "gray30"
;; ;;  :box nil)
;; ;; (set-face-attribute
;; ;;  'tabbar-selected-face nil
;; ;;  :background "#f2f2f6"
;; ;;  :foreground "black"
;; ;;  :box nil)
;; ;; (set-face-attribute
;; ;;  'tabbar-button-face nil
;; ;;  :box '(:line-width 1 :color "gray72" :style released-button))
;; ;; (set-face-attribute
;; ;;  'tabbar-separator-face nil
;; ;;  :height 0.7)
;; ;; (tabbar-mode 1)
;; ;; (define-key global-map [(alt j)] 'tabbar-backward)
;; ;; (define-key global-map [(alt k)] 'tabbar-forward)



;; ;; ;; ############################################################################################################################
;; ;; ;; ### Ruby Stuff
;; ;; ;; (autoload 'run-ruby "inf-ruby"
;; ;; ;;   "Run an inferior Ruby process")
;; ;; ;; (autoload 'inf-ruby-keys "inf-ruby"
;; ;; ;;   "Set local key defs for inf-ruby in ruby-mode")
;; ;; ;; (add-hook 'ruby-mode-hook
;; ;; ;; 	  '(lambda ()
;; ;; ;; 	     (inf-ruby-keys)))
;; ;; ;; (add-to-list 'load-path "~/elisp/emacs-rails")
;; ;; ;; (require 'rails)
;; ;; ;;(require 'ruby-mode)
;; ;; ;; (autoload 'ruby-mode "ruby-mode"
;; ;; ;;   "Mode for editing ruby source files" t)
;; ;; ;; (setq auto-mode-alist
;; ;; ;;       (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
;; ;; ;; (setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
;; ;; ;; 				     interpreter-mode-alist))
;; ;; ;; (setq auto-mode-alist
;; ;; ;;       (append '(("\\.rhtml$" . ruby-mode)) auto-mode-alist))
;; ;; ;(add-hook 'ruby-mode-hook (lambda () (ruby-electric-mode t)))
;; ;; ;(add-hook 'ruby-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))

;; ;; ;;(defvar ruby-tag-face (make-face 'ruby-tag-face))
;; ;; ;;(defvar ruby-variable-face (make-face 'ruby-variable-face))
;; ;; ;;(set-face-background 'ruby-tag-face "Aquamarine")
;; ;; ;;(set-face-foreground 'ruby-tag-face "Black")
;; ;; ;;(set-face-background 'ruby-variable-face "Plum")
;; ;; ;;(set-face-foreground  'ruby-variable-face "Black")
;; ;; ;;(font-lock-add-keywords
;; ;; ;;'ruby-mode

;; ;; ;; (setq ruby-block-highlight-toggle 'overlay)
;; ;; ;; (setq ruby-block-highlight-toggle 'minibuffer)
;; ;; ;; (setq ruby-block-highlight-toggle t)
;; ;; ;; (defun ruby-highlight-var-parens ()
;; ;; ;;   (interactive "p")
;; ;; ;;   (highlight-regexp "{%.*?%}" 'hi-orange))
;; ;; ;; (add-hook 'ruby-mode-hook 'ruby-highlight-var-parens)
;; ;; ;; (load-file "~/elisp/inf-ruby.el")
;; ;; ;; ;;(setq ri-ruby-script "~/elisp/ri-emacs.rb")
;; ;; ;; ;; (autoload 'ri "~/elisp/ri-ruby.el" nil t)
;; ;; ;; ;;/usr/pkg/lib/ruby/gems/1.8/gems/fastri-0.3.1.1/bin
;; ;; ;; (setq ri-ruby-script
;; ;; ;;       "/usr/pkg/lib/ruby/gems/1.8/gems/fastri-0.3.1.1/bin/ri-emacs")
;; ;; ;; (autoload 'ri
;; ;; ;;   "~/elisp/ri-ruby.el" nil t)
;; ;; ;;(load-file "~/elisp/ruby-electric.el")
;; ;; ;; (eval-after-load 'ruby-mode
;; ;; ;;   '(progn
;; ;; ;;      (require 'ruby-compilation)
;; ;; ;;      (add-hook 'ruby-mode-hook 'inf-ruby-keys)
;; ;; ;;      (define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
;; ;; ;;      (define-key ruby-mode-map (kbd "C-M-h") 'backward-kill-word)
;; ;; ;;      (define-key ruby-mode-map (kbd "C-c l") "lambda")))

;; ;; (global-set-key (kbd "C-h r") 'ri)
;; ;; (require 'ruby-block)
;; ;; (ruby-block-mode t)
;; ;; (require 'hideshow-org)
;; ;; (autoload 'hideshowvis-enable "hideshowvis" "Highlight foldable regions")
;; ;; (dolist (hook (list 'emacs-lisp-mode-hook
;; ;; 		    'ruby-mode-hook))
;; ;;   (add-hook hook 'hideshowvis-enable))
;; ;; (defun ruby-custom-setup ()
;; ;;   (add-to-list 'hs-special-modes-alist
;; ;; 	       '(ruby-mode
;; ;; 		 "\\(def\\|do\\)"
;; ;; 		 "end"
;; ;; 		 "#"
;; ;; 		 (lambda (arg) (ruby-end-of-block))
;; ;; 		 nil
;; ;; 		 ))
;; ;;   (hs-minor-mode t)
;; ;; )

;; ;; (add-hook 'ruby-mode-hook 'ruby-custom-setup)
;; ;; ;;(add-to-list 'load-path "~/elisp/yasnippet")
;; ;; (require 'yasnippet-bundle)
;; ;; (setq linum-mode t)

;; ;; ;; (progn
;; ;; ;;   (imenu--cleanup)
;; ;; ;;   (setq imen)
;; ;; ;;(add-hook 'ruby-mode-hook
;; ;;  ;; (lambda()
;; ;; ;(hs-minor-mode t)))
;; ;; (add-to-list 'which-func-modes 'ruby-mode)
;; ;; (which-function-mode t)
;; ;; ;;(global-linum-mode)
;; ;; (global-set-key [(end)] 'tabbar-backward)
;; ;; (global-set-key [(home)]       'tabbar-forward)
;; ;; (global-set-key [(control c)(control d)]       'rubydb)

