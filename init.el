;;; init.el --- The main entry for emacs -*- lexical-binding: t -*-

(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)

(setq read-process-output-max (* 4 1024 1024))

(let ((dir (locate-user-emacs-file "lisp")))
  (add-to-list 'load-path (file-name-as-directory dir))
  (add-to-list 'load-path (file-name-as-directory (expand-file-name "lang" dir))))

(setq custom-file (locate-user-emacs-file "custom.el"))

;; (require 'use-proxy)

(require 'package)
(setq package-archives '(("gnu" . "http://mirrors.cloud.tencent.com/elpa/gnu/")
                         ("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")
                         ("nongnu" . "http://mirrors.cloud.tencent.com/elpa/nongnu/")))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure nil)
  (setq use-package-always-defer nil)
  (setq use-package-always-demand nil)
  (setq use-package-expand-minimally nil)
  (setq use-package-enable-imenu-support t))
(eval-when-compile
  (require 'use-package))

(use-package no-littering
  :ensure t
  :demand t)

(require 'init-system)

(require 'init-ui)

(require 'init-hydra)
(require 'init-built-in)
(require 'init-tool)

(provide 'init)

;;; init.el ends here
