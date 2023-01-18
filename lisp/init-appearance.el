;;; -*- lexical-binding: t -*-

(setq-default indent-tabs-mode nil)
(setq inhibit-compacting-font-caches t
      load-prefer-newer t
      visible-bell t
      create-lockfiles nil
      display-raw-bytes-as-hex t)

(setq inhibit-startup-screen t)

(setq make-backup-files nil
      auto-save-default nil)

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

(use-package saveplace
  :config
  (save-place-mode 1))

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
