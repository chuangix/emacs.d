;;; init-project.el --- Project Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration all about project management, such as
;; projectile and magit.

;;; Code:

(use-package projectile :diminish)

(use-package counsel-projectile
  :config
  (counsel-projectile-mode))

(use-package magit)
(use-package treemacs)

(provide 'init-project)

;;; init-project.el ends here
