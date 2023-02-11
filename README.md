# emacs.d

This is an OOTB emacs configuration.

## Installation

```bash
git clone https://github.com/chuangix/emacs.d ~/.emacs.d
```

or

```bash
git clone https://gitee.com/chuangix/emacs.d ~/.emacs.d
```

## Fonts

Install all the fonts in directory `~/.emacs.d/font/`.

## User Preference Settings

All user preference settings are listed and can be set in `lisp/user-preference.el` file.

You may create that file by yourself, otherwise use default configuration.
An example of `lisp/user-preference.el` is below, and it contains all the settings you can modify.

```elisp
;;; user-preference.el --- Settings of User Preference -*- lexical-binding: t -*-

;;; Commentary:

;; This is all the settings of user preference.

;;; Code:

(defvar *user-preference*
  '(
    ;;;;;;;;;; MODIFICATION REGION BEGIN ;;;;;;;;;;
    ;;;; You can use semicolon to comment/uncomment each setting of a line.
    ;;;; You can also modify the right side values of these settings as you wish.
    ;;;; However, NEVER modify the left side keys!!!
    (editing-style . "emacs") ;; There are 3 options: emacs, vim, cua(Common User Access).
    ;; (ripgrep-executable . "C:\\msys64\\ucrt64\\bin\\rg.exe")
    ;; (wakatime-cli-executable . "C:\\Users\\chuan\\Downloads\\wakatime-cli-windows-amd64.exe")
    ;; (wakatime-api-key . "XXXX")
    ;; (dot-executable . "C:\\Program Files\\Graphviz\\bin\\dot.exe")
    ;; (ditaa-jar . "C:\\Users\\chuan\\Downloads\\ditaa0_9\\ditaa0_9.jar")
    ;; (plantuml-jar . "C:\\Users\\chuan\\Downloads\\plantuml.1.2023.0.jar")
    ;; (clangd-executable . "C:\\Program Files\\LLVM\\bin\\clangd.exe")
    ;; (lldb-executable . "C:\\Program Files\\LLVM\\bin\\lldb-vscode.exe")
    ;; (https-proxy . "proxy.XXXX.com:8080")
    ;; (proxy-account . "XXXX")
    ;; (proxy-password . "XXXX")
    ;;;;;;;;;;; MODIFICATION REGION END ;;;;;;;;;;;
    )
  "All user preference settings should be contained in this association list.")

(provide 'user-preference)

;;; user-preference.el ends here

```
