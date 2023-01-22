;;; init-helm.el --- Helm Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration all about helm and some plugins depending
;; on helm.

;;; Code:

(use-package helm
  :ensure t
  :config
  (helm-mode 1)
  (setq helm-split-window-inside-p t))

(use-package helm-descbinds
  :after helm
  :ensure t
  :config
  (helm-descbinds-mode))

(provide 'init-helm)

;;; init-helm.el ends here
