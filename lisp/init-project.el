;;; init-project.el --- Project Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration all about project management, such as
;; projectile and magit.

;;; Code:

(use-package projectile
  :ensure t
  :diminish)

(use-package counsel-projectile
  :ensure t
  :after (projectile)
  :config
  (counsel-projectile-mode))

(use-package magit
  :ensure t)

(use-package treemacs
  :ensure t)

(provide 'init-project)

;;; init-project.el ends here
