;;; use-proxy.el --- Enable Proxy -*- lexical-binding: t -*-

;;; Commentary:

;; This is a toggle file for proxy, which can be called with require
;; from init.el by users manually.

;;; Code:

(setq url-proxy-services
      '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
        ("http" . "proxy.neusoft.com:8080")
        ("https" . "proxy.neusoft.com:8080")))

(setq url-http-proxy-basic-auth-storage
      (list (list "proxy.neusoft.com:8080"
                  (cons "Input your LDAP UID !"
                        (base64-encode-string "ma-dch:QWERqwer1!")))))

(provide 'use-proxy)

;;; use-proxy.el ends here
