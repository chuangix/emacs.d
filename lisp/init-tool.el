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

(use-package ivy
  :ensure t
  :defer 1
  :demand
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffert t
	ivy-initial-inputs-alist nil
	ivy-count-format "%d/%d "
	enable-recursive-minibuffers t
	ivy-re-builders-alist '((t . ivy--regex-ignore-order))))

(use-package counsel
  :after (ivy)
  :ensure t
  :bind (("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)
	 ("C-c f" . counsel-recentf)
	 ("C-c g" . counsel-git)))

(use-package swiper
  :after ivy
  :ensure t
  :bind (("C-s" . swiper)
	 ("C-r" . swiper-isearch-backward))
  :config (setq swiper-action-recenter t
		swiper-include-line-number-in-search t))

(provide 'init-tool)

;;; init-tool.el ends here
