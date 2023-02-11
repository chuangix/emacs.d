;;; init-project.el --- Project Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration all about project management, such as
;; projectile and magit.

;;; Code:

(use-package rg)
(eval-and-compile
  (when (file-exists-p (locate-user-emacs-file "lisp/user-preference.el"))
    (require 'user-preference)
    (let ((ripgrep-executable (alist-get 'ripgrep-executable *user-preference*)))
      (unless (eq nil ripgrep-executable)
        (setq rg-executable ripgrep-executable)
        (add-to-list 'exec-path (file-name-directory rg-executable))))))

(use-package projectile)

(use-package counsel-projectile
  :config
  (counsel-projectile-mode))

(use-package magit)
(use-package treemacs)

(provide 'init-project)

;;; init-project.el ends here
