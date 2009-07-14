;; ;; ;; (defun start-zsh (&optional new)
;; ;; ;;   "Switch to the zsh buffer or start one if none exists."
;; ;; ;;   (interactive "P")
;; ;; ;;   (if new
;; ;; ;;       (ansi-term "/bin/zsh" "zsh")
;; ;; ;;     (if (get-buffer "*zsh*")
;; ;; ;; 	(switch-to-buffer "*zsh*")
;; ;; ;;       (ansi-term "/usr/pkg/bin/zsh" "zsh"))))
;; ;; ;; Global binding to access a zsh shell
;; ;; ;;(global-set-key [(control c) (control v)] 'start-zsh)
