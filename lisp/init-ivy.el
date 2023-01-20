;;; init-ivy.el --- Ivy Configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package ivy
  :ensure t
  :diminish
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-initial-inputs-alist nil
	ivy-count-format "%d/%d "
	enable-recursive-minibuffers t
	ivy-re-builders-alist '((swiper . ivy--regex-plus)
                                (t . ivy--regex-fuzzy))))

(use-package counsel
  :after (ivy)
  :ensure t
  :bind
  (("M-x" . counsel-M-x)
   ("C-x C-f" . counsel-find-file)
   ("C-c f" . counsel-recentf)
   ("C-c g" . counsel-git)))

(use-package swiper
  :after ivy
  :ensure t
  :config
  (setq swiper-action-recenter t
	swiper-include-line-number-in-search t)
  :bind
  (("C-s" . swiper)
   ("C-r" . swiper-isearch-backward)))

(provide 'init-ivy)

;;; init-ivy.el ends here
