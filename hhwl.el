;; ;; wanderlust
;; (autoload 'wl "wl" "Wanderlust" t)
;; (autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
;; (autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)
;; ;; ;; IMAP
;; ;; (setq elmo-imap4-default-server "imap.gmail.com")
;; ;; (setq elmo-imap4-default-user "chris@hippiehacker.org")
;; ;; (setq elmo-imap4-default-authenticate-type 'clear)
;; ;; (setq elmo-imap4-default-port '993)
;; ;; (setq elmo-imap4-default-stream-type 'ssl)

;; ;; (setq elmo-imap4-use-modified-utf7 t)

;; ;; ;; SMTP
;; ;; (setq wl-smtp-connection-type 'starttls)
;; ;; (setq wl-smtp-posting-port 587)
;; ;; (setq wl-smtp-authenticate-type "plain")
;; ;; (setq wl-smtp-posting-user "chris@codecafe.com")
;; ;; (setq wl-smtp-posting-server "smtp.gmail.com")
;; ;; (setq wl-local-domain "codecafe.com")

;; ;; (setq wl-default-folder "%inbox")
;; ;; (setq wl-default-spec "%")
;; ;; (setq wl-draft-folder "%[Gmail]/Drafts") ; Gmail IMAP
;; ;; (setq wl-trash-folder "%[Gmail]/Trash")

;; ;; (setq wl-folder-check-async t)

;; ;; ;; (setq elmo-imap4-use-modified-utf7 t)

;; ;; (autoload 'wl-user-agent-compose "wl-draft" nil t)
;; ;; (if (boundp 'mail-user-agent)
;; ;;     (setq mail-user-agent 'wl-user-agent))
;; ;; (if (fboundp 'define-mail-user-agent)
;; ;;     (define-mail-user-agent
;; ;;       'wl-user-agent
;; ;;       'wl-user-agent-compose
;; ;;       'wl-draft-send
;; ;;       'wl-draft-kill
;; ;;       'mail-send-hook))

;; ;; By default, `From:', `Subject:', `To:' and `Cc:' is available.  If you
;; ;; want to decide destination by other header fields, set the variable
;; ;; `elmo-msgdb-extra-fields' like following.

;; ;;(setq elmo-msgdb-extra-fields
;; ;;      '("x-ml-name"
;;         ;; "reply-to"
;;         ;; "sender"
;; ;;        "mailing-list"))
;; ;; ;;(require 'mailcrypt)
;; ;; (add-hook 'wl-summary-mode-hook 'mc-install-read-mode)
;; ;; (add-hook 'wl-mail-setup-hook 'mc-install-write-mode)

;; ;; (defun mc-wl-verify-signature ()
;; ;;   (interactive)
;; ;;   (save-window-excursion
;; ;;     (wl-summary-jump-to-current-message)
;; ;;     (mc-verify)))

;; ;; (defun mc-wl-decrypt-message ()
;; ;;   (interactive)
;; ;;   (save-window-excursion
;; ;;     (wl-summary-jump-to-current-message)
;; ;;     (let ((inhibit-read-only t))
;; ;;       (mc-decrypt))))

;; ;; (eval-after-load "mailcrypt"
;; ;;   '(setq mc-modes-alist
;; ;;        (append
;; ;;         (quote
;; ;;          ((wl-draft-mode (encrypt . mc-encrypt-message)
;; ;;             (sign . mc-sign-message))
;; ;;           (wl-summary-mode (decrypt . mc-wl-decrypt-message)
;; ;;             (verify . mc-wl-verify-signature))))
;; ;;         mc-modes-alist)))

;; ;; Mail settings.
;; ;; (setq mail-archive-file-name "~/RMAIL.outbox")
;; ;; (setq mail-yank-ignored-headers "^.*:")

;; ;; (setq rmail-displayed-headers "^From:\\|^To:\\|^Subject:\\|^Date:\\|^Cc:")
;; ;; (setq rmail-confirm-expunge nil)
;;      ;; (autoload 'wl-user-agent-compose "wl-draft" nil t)
;;      ;; (if (boundp 'mail-user-agent)
;;      ;;     (setq mail-user-agent 'wl-user-agent))
;;      ;; (if (fboundp 'define-mail-user-agent)
;;      ;;     (define-mail-user-agent
;;      ;;       'wl-user-agent
;;      ;;       'wl-user-agent-compose
;;      ;;       'wl-draft-send
;;      ;;       'wl-draft-kill
;;      ;;       'mail-send-hook))
;; ;;  '(wl-demo nil)
;; ;;  '(wl-draft-use-cache t))
