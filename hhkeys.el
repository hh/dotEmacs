;; ;; ;(global-set-key [(control o)] 'ido-find-file) ; use Ctrl-o to open a (new) file
;; ;; ;(global-set-key [(control s)] 'save-buffer) ; save  with Ctrl-s
;; ;; ;(global-set-key [(meta q)]    'kill-this-buffer)
;; ;; ;(global-set-key [(control f)] 'isearch-forward-regexp)
;; ;; ;(global-set-key [(control g)] 'isearch-repeat-forward)
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
;; ;; ;; (global-set-key "^X!" 'shell)
;; ;; ;; (global-set-key "^Xx" 'send-to-buffer) ;;copies from top buffer to bottom
;; ;; ;; (fset 'send-to-buffer "\C-@\C-[\C-f\C-e\C-[w\C-xo\C-y\C-m\C-xo\C-e\C-[OC")

;; ;; (global-set-key (kbd "C-c <right>") 'hs-show-block)
;; ;; (global-set-key (kbd "C-c <left>")  'hs-hide-block)
;; ;; (global-set-key (kbd "C-c <up>")    'hs-hide-all)
;; ;; (global-set-key (kbd "C-c <down>")  'hs-show-all)
;; ;; ;(global-set-key [(f6)] 'recompile)
(global-set-key [(f12)] 'comment-region)
(global-set-key [(f11)] 'uncomment-region)
