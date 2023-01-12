;;; init-tool.el --- The basic settings -*- lexical-binding: t -*-

(use-package which-key
  :ensure t
  :hook (after-init . which-key-mode)
  :config (which-key-setup-side-window-right)
  :custom (which-key-idle-delay 1.5))

(use-package session
  :ensure t
  :config (session-initialize)
  :custom (desktop-save-mode t))

(use-package helm
  :ensure t
  :bind
  (("M-x"     . helm-M-x)
   ("C-x C-f" . helm-find-files)))

(use-package helm-descbinds
  :after helm
  :ensure t)

(use-package avy
  :ensure t
  :hook (after-init . avy-setup-default)
  :bind
  (("M-g c" . avy-goto-char-timer)
   ("M-g l" . avy-goto-line))
  :custom
  (avy-background t)
  (avy-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l ?q ?w ?e ?r ?u ?i ?o ?p)))

(use-package fanyi
  :ensure t
  :commands fanyi-dwim fanyi-dwim2)

(provide 'init-tool)

;;; init-tool.el ends here
