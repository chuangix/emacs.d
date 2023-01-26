# emacs.d

This is an OOTB emacs configuration.

All the user perference settings are listed and can be set in `lisp/user-preference.el` file.
You may create that file by yourself, otherwise your will use the defaut configuration.

An example of `lisp/user-preference.el` is below, and it contains all the settings you can modify.

```elisp
;;; user-preference.el --- Settings of User Preference -*- lexical-binding: t -*-

;;; Commentary:

;; This is all the settings of user preference.

;;; Code:

(defvar *user-preference*
  '(("http-proxy" . "proxy.neusoft.com:8080")
    ("https-proxy" . "proxy.neusoft.com:8080")
    ("proxy-account" . "ma-dch")
    ("proxy-password" . "QWERqwer2@"))
  "All user preference settings should be contained in this association list.")

(provide 'user-preference)

;;; user-preference.el ends here
```
