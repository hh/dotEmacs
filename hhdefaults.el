;; ;; Backup file ~X~ Settings
(setq version-control t
      vc-make-backup-files t
      delete-old-versions 'yes)

;; ;; Modeline
(display-battery-mode)
(display-time-mode)
(size-indication-mode)

;; ;; Other Interesting Tidbits
(global-font-lock-mode t)
(setq inhibit-startup-screen t)		; Sensible for new users...
(setq disabled-function nil)	; Enable all disabled hooks.

;; (setq compilation-scroll-output t)

;; ;; Sugar is bad for you.
(when window-system
  (tool-bar-mode -1)
  (scroll-bar-mode -1))
;(menu-bar-mode -1)
;; ;(tool-bar-mode nil)
;; ;(menu-bar-mode nil)
;; ;(scroll-bar-mode nil)

;; ;; Load system specific settings.
(let ((site-file (concat "~/.emacs:" (system-name))))
  (when (file-exists-p site-file)
    (load-file site-file)))

;; ;; (when (featurep 'xemacs)
;; ;;   (error "Please don't use Lucid Emacs.  GNU Emacs is a better trip."))

;; ;; (global-font-lock-mode t)
;; ;; (setq compilation-scroll-output t)
;; ;; ;; Show column number at bottom of screen..
;; ;; (column-number-mode 1)
;; ;;  '(truncate-partial-width-windows nil)
;; ;;  '(undo-outer-limit 20000000)

;; ;; ;;(setq compile-command "/src/bb/src/build.sh -m bebox -j2 kernel=GENERIC")
;; ;; (setq compile-command "cd ~/trunk/soap/Luci/ && rake")
;; ;; (if (and (boundp 'window-system) window-system)
;; ;;     (when (string-match "XEmacs" emacs-version)
;; ;;       (if (not (and (boundp 'mule-x-win-initted) mule-x-win-initted))
;; ;; 	  (require 'sym-lock))
;; ;;       (require 'font-lock)))
;; ;; ;;(ansi-term "/bin/ksh")
;; ;; (setq inhibit-startup-message t)
;; ;; 					;(setq debug-on-error t)
;; ;; (defun my-ansi-term () (interactive)(ansi-term "/bin/bash")) (global-set-key "\C-t" 'my-ansi-term)

;; ;; (require 'ido)
;; ;; (ido-mode t)
;; ;; (setq iswitch-mode t)

;; ;; (setq uniquify-buffer-name-style 'forward)
;; ;; ;; Moving cursor down at bottom scrolls only a
;; ;; ;; single line, not half page
;; ;; (setq scroll-step 1)
;; ;; (setq scroll-conservatively 5)
;; ;; (fset 'yes-or-no-p 'y-or-n-p)


;; ;; (setq mouse-autoselect-window t)

;; ;; (require 'uniquify)
;; ;; (setq uniquify-buffer-name-style 'post-forward-angle-brackets)
;; ;; ;;(setq default-cursor-type 'bar)

;; ;; (setq font-lock-maximum-decoration t)
;; ;; (setq display-time-24hr-format t)	; time in mil style.
;; ;; (setq display-time-day-and-date t)
;; ;; (setq column-number-mode t)		; show current column
