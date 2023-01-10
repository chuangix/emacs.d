;;; init-tool.el --- The basic settings -*- lexical-binding: t -*-

(use-package which-key
  :ensure t
  :hook (after-init . which-key-mode)
  :custom
  (which-key-idle-delay 0.5))

(provide 'init-tool)

;;; init-tool.el ends here
