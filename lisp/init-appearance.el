;;; -*- lexical-binding: t -*-

(setq inhibit-startup-screen t)

(setq inhibit-compacting-font-caches t
      visible-bell t)

(use-package faces
  :if (memq system-type '(ms-doc windows-nt cygwin))
  :config
  (set-face-attribute 'default nil
                      :font "Consolas"
                      :height 110))

(use-package frame
  :config
  (setq blink-cursor-mode nil))

(use-package menu-bar
  :config
  (menu-bar-mode -1))

(use-package tool-bar
  :config
  (tool-bar-mode -1))

(use-package scroll-bar
  :config
  (scroll-bar-mode -1))

(use-package simple
  :config
  (line-number-mode -1)
  (column-number-mode -1)
  (size-indication-mode -1))

(use-package paren
  :config
  (setq show-paren-when-point-in-periphery t))

(use-package hl-line
  :when (display-graphic-p)
  :config
  (global-hl-line-mode 1))

(use-package smart-mode-line
  :ensure t
  :config
  (progn
    (setq sml/no-confirm-load-theme t
	  sml/theme 'respectful)
    (sml/setup)))

(use-package eldoc
  :diminish)

(use-package emacs
  :unless (display-graphic-p)
  :config (load-theme 'leuven t))

(use-package doom-themes
  :ensure t
  :when (display-graphic-p)
  :config
  (load-theme 'doom-one t)
  (doom-themes-org-config))

(provide 'init-appearance)
