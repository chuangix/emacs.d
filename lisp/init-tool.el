;;; init-tool.el --- The basic settings -*- lexical-binding: t -*-

(use-package which-key
  :ensure t
  :hook (after-init . which-key-mode)
  :custom (which-key-idle-delay 0.5))

(use-package fanyi
  :ensure t
  :commands fanyi-dwim fanyi-dwim2)

(use-package session
  :ensure t
  :config (session-initialize)
  :custom (desktop-save-mode t))

(use-package helm
  :ensure t)

(provide 'init-tool)

;;; init-tool.el ends here
