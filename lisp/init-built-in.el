;;; init-built-in.el --- The built-in package settings -*- lexical-binding: t -*-

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-startup-screen t
      inhibit-compacting-font-caches t
      make-backup-files nil
      auto-save-default nil
      create-lockfiles nil
      load-prefer-newer t
      visible-bell t
      blink-cursor-mode nil
      display-raw-bytes-as-hex t)

(setq-default indent-tabs-mode nil)

(use-package simple
  :ensure nil
  :custom
  (line-number-mode t)
  (column-number-mode t)
  (size-indication-mode t))

(use-package paren
  :ensure nil
  :hook (after-init . show-paren-mode)
  :custom (show-paren-when-point-in-periphery t))

(use-package hl-line
  :ensure nil
  :when (display-graphic-p)
  :hook (after-init . global-hl-line-mode))

(use-package saveplace
  :ensure nil
  :hook (after-init . save-place-mode))

(use-package emacs
  :ensure nil
  :unless (display-graphic-p)
  :config (load-theme 'leuven t))

(provide 'init-built-in)

;;; init-built-in.el ends here