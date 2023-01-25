;;; check-proxy.el --- Check to Connect via Proxy -*- lexical-binding: t -*-

;;; Commentary:

;; This file will check proxy configuration and decide whether to use
;; proxy or direct connection.

;;; Code:

(defvar *http-proxy* "proxy.neusoft.com:8080"
  "The internal http proxy provided by Neusoft.")

(defvar *https-proxy* "proxy.neusoft.com:8080"
  "The internal https proxy provided by Neusoft.")

(defvar *proxy-user-password-file* "~/.emacs.d/proxy.txt"
  "The file storing proxy user and password following `USER_NAME:PASSWORD'.")

(when (file-exists-p *proxy-user-password-file*)
  (let ((user-password (string-trim
                        (with-temp-buffer
                          (insert-file-contents *proxy-user-password-file*)
                          (buffer-string)))))
    (unless (string-empty-p user-password)
      (setq url-proxy-services
            '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
              ("http" . *http-proxy*)
              ("https" . *https-proxy*)))
      (setq url-http-proxy-basic-auth-storage
            (list (list "proxy.neusoft.com:8080"
                        (cons "Input your LDAP UID !"
                              (base64-encode-string user-password))))))))

(provide 'check-proxy)

;;; check-proxy.el ends here
