;;; init-ivy.el --- Ivy Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration all about ivy and some plugins depending
;; on ivy.

;;; Code:

(use-package amx)

(use-package ivy
  :after amx
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-initial-inputs-alist nil)
  (setq ivy-count-format "%d/%d ")
  (setq enable-recursive-minibuffers t)
  (setq ivy-re-builders-alist '((swiper . ivy--regex-plus)
                                (swiper-isearch . ivy--regex-plus)
                                (t . ivy--regex-fuzzy))))

(use-package counsel
  :bind
  (("M-x" . counsel-M-x)
   ("C-x C-f" . counsel-find-file)
   ("C-c f" . counsel-recentf)
   ("C-c g" . counsel-git)))

(use-package swiper
  :config
  (setq swiper-action-recenter t)
  (setq swiper-include-line-number-in-search t)
  :bind
  (("C-s" . swiper)
   ("C-r" . swiper-isearch-backward)))

(use-package ivy-posframe
  :config
  (ivy-posframe-mode 1))

(provide 'init-ivy)

;;; init-ivy.el ends here
