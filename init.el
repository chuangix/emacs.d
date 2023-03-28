;;; init.el --- Entry of Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the first entry of all the configuration, and some common
;; configuration used by lisp/ is also performed here.

;;; Code:

(setq gc-cons-threshold most-positive-fixnum)
(setq gc-cons-percentage 0.6)

(let* ((lisp-dir (locate-user-emacs-file "lisp"))
       (lang-dir (expand-file-name "lang" lisp-dir)))
  (add-to-list 'load-path (file-name-as-directory lisp-dir))
  (add-to-list 'load-path (file-name-as-directory lang-dir)))

(setq custom-file (locate-user-emacs-file "custom.el"))

(require 'check-proxy)

(require 'package)
(setq package-archives '(("org" . "http://mirrors.cloud.tencent.com/elpa/org/")
                         ("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")
                         ("gnu" . "http://mirrors.cloud.tencent.com/elpa/gnu/")
                         ("nongnu" . "http://mirrors.cloud.tencent.com/elpa/nongnu/")))
(if (< emacs-major-version 27) (package-initialize))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-always-defer nil)
  (setq use-package-always-demand nil))
(eval-when-compile
  (require 'use-package))

(use-package no-littering :demand t)
(use-package hydra)
(use-package use-package-hydra)

(require 'init-common)
(require 'init-appearance)
(require 'init-ivy)
(require 'init-avy)
(require 'init-org)
(require 'init-project)
(require 'init-company)
;; (require 'init-flyspell)
(require 'init-flycheck)
;; (require 'init-yasnippet)
(require 'init-lsp)
;; (require 'init-lang-c)
(require 'init-lang-cpp)
;; (require 'init-lang-java)
;; (require 'init-lang-go)
;; (require 'init-lang-rust)
;; (require 'init-lang-elisp)
;; (require 'init-lang-haskell)
;; (require 'init-lang-perl)
;; (require 'init-lang-python)
;; (require 'init-lang-ruby)
;; (require 'init-lang-javascript)
;; (require 'init-lang-typescript)
;; (require 'init-lang-franca-idl)
(require 'init-misc)
;; (require 'init-diminish)
(require 'init-hydra)

(provide 'init)

;;; init.el ends here
