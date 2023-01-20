;;; -*- lexical-binding: t -*-

(setq gc-cons-threshold most-positive-fixnum)

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
  (setq use-package-always-demand nil))
(eval-when-compile
  (require 'use-package))

(use-package no-littering
  :ensure t
  :demand t)

(require 'init-essential)
;; (require 'init-evil)
(require 'init-hydra)
(require 'init-appearance)
;; (require 'init-projectile)
;; (require 'init-magit)
(require 'init-avy)
(require 'init-ivy)
(require 'init-company)
;; (require 'init-yasnippet)
;; (require 'init-flyspell)
;; (require 'init-flymake)
;; (require 'init-lang-c)
;; (require 'init-lang-cpp)
;; (require 'init-lang-java)
;; (require 'init-lang-go)
;; (require 'init-lang-rust)
;; (require 'init-lang-elisp)
;; (require 'init-lang-haskell)
;; (require 'init-lang-javascript)
;; (require 'init-lang-typescript)
;; (require 'init-org)
(require 'init-misc)

(provide 'init)
