;;; init-misc.el --- Flycheck Configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package flycheck
  :ensure t
  :hook (prog-mode . flycheck-mode)
  :config
  (setq flycheck-emacs-lisp-load-path 'inherit))

(provide 'init-flycheck)

;;; init-flycheck.el ends here
