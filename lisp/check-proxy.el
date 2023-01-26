;;; check-proxy.el --- Check to Connect via Proxy -*- lexical-binding: t -*-

;;; Commentary:

;; This file will check proxy configuration and decide whether to use
;; proxy or direct connection.

;;; Code:

(when (file-exists-p (locate-user-emacs-file "lisp/user-preference.el"))
  (require 'user-preference)
  (let* ((http-proxy (assoc "http-proxy" *user-preference*))
         (https-proxy (assoc "https-proxy" *user-preference*))
         (http (cons "http" (cdr http-proxy)))
         (https (cons "https" (cdr https-proxy))))
    (setq url-proxy-services
          '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")))
    (unless (eq nil http) (push http url-proxy-services))
    (unless (eq nil https) (push https url-proxy-services)))
  (let* ((account (cdr (assoc "proxy-account" *user-preference*)))
         (password (cdr (assoc "proxy-password" *user-preference*)))
         (account-password (concat account ":" password)))
    (unless (eq ":" account-password)
      (setq url-http-proxy-basic-auth-storage
            (list (list "proxy.neusoft.com:8080"
                        (cons "Input your LDAP UID !"
                              (base64-encode-string account-password))))))))

(provide 'check-proxy)

;;; check-proxy.el ends here
