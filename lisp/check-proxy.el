;;; check-proxy.el --- Check to Connect via Proxy -*- lexical-binding: t -*-

;;; Commentary:

;; This file will check proxy configuration and decide whether to use
;; proxy or direct connection.

;;; Code:

(eval-and-compile
  (when (require 'user-preference nil t)
    (let ((https-proxy (alist-get 'https-proxy *user-preference*)))
      (unless (eq nil https-proxy)
        (setq url-proxy-services ())
        (push (cons "http" https-proxy) url-proxy-services)
        (push (cons "https" https-proxy) url-proxy-services)
        (push (cons "no_proxy" "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)") url-proxy-services)
        (let ((account (alist-get 'proxy-account *user-preference*))
              (password (alist-get 'proxy-password *user-preference*)))
          (or (eq nil account)
              (eq nil password)
              (defconst url-http-proxy-basic-auth-storage
                (list
                 (list https-proxy
                       (cons "Input your LDAP UID !"
                             (base64-encode-string
                              (concat account ":" password))))))))))))

(provide 'check-proxy)

;;; check-proxy.el ends here
