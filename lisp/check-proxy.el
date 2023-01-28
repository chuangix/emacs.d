;;; check-proxy.el --- Check to Connect via Proxy -*- lexical-binding: t -*-

;;; Commentary:

;; This file will check proxy configuration and decide whether to use
;; proxy or direct connection.

;;; Code:

(when (file-exists-p (locate-user-emacs-file "lisp/user-preference.el"))
  (require 'user-preference)
  (let ((http (alist-get 'https-proxy *user-preference*))
         (https (alist-get 'https-proxy *user-preference*)))
    (or (eq nil http)
        (eq nil https)
        (progn
          (setq url-proxy-services ())
          (push (cons "http" http) url-proxy-services)
          (push (cons "https" https) url-proxy-services)
          (push (cons "no_proxy" "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)") url-proxy-services))))
  (let ((account (alist-get 'proxy-account *user-preference*))
        (password (alist-get 'proxy-password *user-preference*)))
    (or (eq nil account)
        (eq nil password)
        (setq url-http-proxy-basic-auth-storage
            (list (list "proxy.neusoft.com:8080"
                        (cons "Input your LDAP UID !"
                              (base64-encode-string (concat account ":" password)))))))))

(provide 'check-proxy)

;;; check-proxy.el ends here
