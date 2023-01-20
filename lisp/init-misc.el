;;; -*- lexical-binding: t -*-

(use-package which-key
  :ensure t
  :diminish
  :hook (after-init . which-key-mode)
  :config
  (progn
    (which-key-setup-side-window-right)
    (setq which-key-idle-delay 1.5)))

(use-package fanyi
  :ensure t
  :commands fanyi-dwim fanyi-dwim2)

(provide 'init-misc)
