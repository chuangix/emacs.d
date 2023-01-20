;;; init-project.el --- Project Configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package projectile
  :ensure t)

(use-package counsel-projectile
  :ensure t
  :after (projectile)
  :config
  (counsel-projectile-mode))

(use-package magit
  :ensure t)

(provide 'init-project)

;;; init-project.el ends here
