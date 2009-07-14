(require 'tramp)
;(tramp-set-completion-function "ssh"
;			       '((tramp-parse-sconfig "/etc/ssh_config")
;				 (tramp-parse-sconfig "~/.ssh/config")))
;(setq      tramp-default-user "hh"
;      tramp-default-host "air")
;(load-file "~/elisp/tramps.el")
; not working in osx
;; ((tramp-parse-sconfig "/etc/ssh_config")
;;  (tramp-parse-sconfig "~/.ssh/config"))
;; ;; (add-to-list 'tramp-default-proxies-alist
;; ;;              '("\\." nil "/ssh:bird@bastion.your.domain:"))
;; ;; (setq tramp-default-method "ssh")
;(setq tramp-default-user "john"
;      tramp-default-host "target")
(setq tramp-default-method "sshx")
(add-to-list 'tramp-default-method-alist
	     '("\\`localhost\\'" "\\`root\\'" "su"))


; use this tramp ftp://ftp.gnu.org/gnu/tramp/tramp-2.1.16.tar.gz
; only works in certain tramp versions
;(add-to-list 'tramp-default-user-alist '("ssh" "q\\'" "hh"))
;(add-to-list 'tramp-default-user-alist '("ssh" "q\\'" "hh"))
;(add-to-list 'tramp-default-user-alist '("ssh" ".*\\.isgenesis\\.com\\'" "root"))
;(add-to-list 'tramp-default-user-alist '("ssh" "\\`q\\.colo\\.isgenesis\\.com\\'" nil))
;(add-to-list 'tramp-default-user-alist '("ssh" "\\`q\\.colo\\.isgenesis\\.com\\'" "hh"))
;(add-to-list 'tramp-default-user-alist '(nil nil "jonas") t)

;(add-to-list 'tramp-default-proxies-alist '("\\." nil "/ssh:hh@q:"))
(add-to-list 'tramp-default-proxies-alist '("\\.isgenesis\\.com" nil "/ssh:hh@q:"))
(add-to-list 'tramp-default-proxies-alist '("qaca06" nil "/hh@q:"))
(add-to-list 'tramp-default-proxies-alist '("\\.your\\.domain\\'" nil nil))

;   Please note the order of the code.  `add-to-list' adds elements at
;the beginning of a list.  Therefore, most relevant rules must be added
;last.

;;;    Proxy hosts can be cascaded.  If there is another host called
;;; `jump.your.domain', which is the only one in your local domain who is
;;; allowed connecting `bastion.your.domain', you can add another rule:

     (add-to-list 'tramp-default-proxies-alist
                  '("\\`bastion\\.your\\.domain\\'"
                    "\\`bird\\'"
                    "/ssh:jump.your.domain:"))

;;;    PROXY can contain the patterns `%h' or `%u'.  These patterns are
;;; replaced by the strings matching HOST or USER, respectively.

;;;    If you, for example, wants to work as `root' on hosts in the domain
;;; `your.domain', but login as `root' is disabled for non-local access,
;;; you might add the following rule:

     (add-to-list 'tramp-default-proxies-alist
                  '("\\.your\\.domain\\'" "\\`root\\'" "/ssh:%h:"))

;;;    Opening `/sudo:randomhost.your.domain:' would connect first
;;; `randomhost.your.domain' via `ssh' under your account name, and perform
;;; `sudo -u root' on that host afterwards.  It is important to know that
;;; the given method is applied on the host which has been reached so far.
;;; `sudo -u root', applied on your local host, wouldn't be useful here.

;;;    This is the recommended configuration to work as `root' on remote
;;; Ubuntu hosts.

;;;    Finally, `tramp-default-proxies-alist' can be used to pass firewalls
;;; or proxy servers.  Imagine your local network has a host
;;; `proxy.your.domain' which is used on port 3128 as HTTP proxy to the
;;; outer world.  Your friendly administrator has granted you access under
;;; your user name to `host.other.domain' on that proxy server.(1)  You
;;; would need to add the following rule:

;;;     (add-to-list 'tramp-default-proxies-alist
;;;                '("\\`host\\.other\\.domain\\'" nil
;;;                    "/tunnel:proxy.your.domain#3128:"))

;;;    Gateway methods can be declared as first hop only in a multiple hop
;;; chain.

;;;    ---------- Footnotes ----------

;;;    (1) HTTP tunnels are intended for secure SSL/TLS communication.
;;; Therefore, many proxy server restrict the tunnels to related target
;;; ports.  You might need to run your ssh server on your target host
;;; `host.other.domain' on such a port, like 443 (https).  See
;;; `http://savannah.gnu.org/maintenance/CvsFromBehindFirewall' for
;;; discussion of ethical issues.
