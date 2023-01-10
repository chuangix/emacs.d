;;; init-ui.el --- Theme, modeline and window behavior -*- lexical-binding: t -*-

(use-package emacs
  :ensure nil
  :unless (display-graphic-p)
  :config (load-theme 'leuven t))

(use-package doom-themes
  :ensure t
  :when (display-graphic-p)
  :config
  (load-theme 'doom-one t)
  (doom-themes-org-config))

(provide 'init-ui)

;;; init-ui.el ends here
