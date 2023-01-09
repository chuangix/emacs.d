;;; init-proxy.el --- The proxy settings -*- lexical-binding: t -*-

(defvar proxy-url "proxy.neusoft.com:8080")
(defvar noproxy-url "^\\(localhost\\|192.168.*\\|10.*\\)")
(defvar proxy-login "ma-dch")
(defvar proxy-password "QWERqwer1!")

(defun proxy-http-show ()
  "Show HTTP/HTTPS proxy."
  (interactive)
  (if url-proxy-services
      (message "Current HTTP proxy is `%s'" proxy-url)
    (message "No HTTP proxy")))

(defun proxy-http-enable ()
  "Enable HTTP/HTTPS proxy."
  (interactive)
  (setq url-proxy-services
        `(("http"     . proxy-url)
          ("https"    . proxy-url)
          ("no_proxy" . noproxy-url)))
  (setq url-http-proxy-basic-auth-storage
	(list (list proxy-url
                    (cons "Input your LDAP UID !"
			  (base64-encode-string (concat proxy-login
							":"
							proxy-password))))))
  (proxy-http-show))

(defun proxy-http-disable ()
  "Disable HTTP/HTTPS proxy."
  (interactive)
  (setq url-proxy-services nil)
  (setq url-http-proxy-basic-auth-storage nil)
  (proxy-http-show))

(defun proxy-http-toggle ()
  "Toggle HTTP/HTTPS proxy."
  (interactive)
  (if (bound-and-true-p url-proxy-services)
      (proxy-http-disable)
    (proxy-http-enable)))

(provide 'init-proxy)

;;; init-proxy.el ends here
