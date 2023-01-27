# emacs.d

This is an OOTB emacs configuration.

All user perference settings are listed and can be set in `lisp/user-preference.el` file.

You may create that file by yourself, otherwise use defaut configuration.
An example of `lisp/user-preference.el` is below, and it contains all the settings you can modify.

```elisp
;;; user-preference.el --- Settings of User Preference -*- lexical-binding: t -*-

;;; Commentary:

;; This is all the settings of user preference.

;;; Code:

(defvar *user-preference*
  '(
    ;;;;;;;;;; MODIFICATION REGION BEGIN ;;;;;;;;;;
    ;; You can use semicolon to comment/uncomment each setting of a line.
    ;; You can also modify the right side values of these settings as you wish.
    ;; However, NEVER modify the left side keys!!!
    ("wakatime-cli-executable" . "c:/Users/chuan/Downloads/wakatime-cli-windows-amd64.exe")
    ("wakatime-api-key" . "XXXX")
    ;; ("http-proxy" . "proxy.neusoft.com:8080")
    ;; ("https-proxy" . "proxy.neusoft.com:8080")
    ;; ("proxy-account" . "ma-dch")
    ;; ("proxy-password" . "XXXX")
    ;;;;;;;;;;; MODIFICATION REGION END ;;;;;;;;;;;
    )
  "All user preference settings should be contained in this association list.")

(provide 'user-preference)

;;; user-preference.el ends here

```
