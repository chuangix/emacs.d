;;; init-flycheck.el --- Flycheck Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration all about flycheck and some plugins
;; depending on flycheck.

;;; Code:

(use-package flycheck
  :ensure t
  :hook (prog-mode . flycheck-mode)
  :config
  (setq flycheck-emacs-lisp-load-path 'inherit))

(provide 'init-flycheck)

;;; init-flycheck.el ends here
