;;; init.el --- Essential Configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)

(use-package mule
  :config
  (progn
    (set-terminal-coding-system 'utf-8)
    (set-keyboard-coding-system 'utf-8)))

(when (eq system-type 'darwin)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'none))

(when (memq system-type '(ms-doc windows-nt cygwin))
  (setq w32-recognize-altgr nil))

(setq-default indent-tabs-mode nil)

(setq create-lockfiles nil
      display-raw-bytes-as-hex t)

(setq make-backup-files nil
      auto-save-default nil)

(use-package files
  :config
  (auto-save-visited-mode 1))

(use-package recentf
  :config
  (recentf-mode 1))

(use-package good-scroll
  :ensure t
  :hook (after-init . good-scroll-mode))

(use-package hungry-delete
  :ensure t
  :bind (("C-c DEL" . hungry-delete-backward)
         ("C-c d" . hungry-delete-forward)))

(use-package move-dup
  :ensure t
  :diminish
  :hook (after-init . global-move-dup-mode)
  :bind
  ("<M-up>" . move-dup-move-lines-up)
  ("<M-down>" . move-dup-move-lines-down))

(use-package undo-tree
  :ensure t
  :diminish
  :hook (after-init . global-undo-tree-mode)
  :config
  (setq undo-tree-visualizer-timestamps t
        undo-tree-auto-save-history t))

(use-package session
  :ensure t
  :config
  (progn
    (session-initialize)
    (desktop-save-mode 1)))

(use-package restart-emacs
  :ensure t
  :bind
  ("C-x C" . restart-emacs))

(provide 'init-essential)

;;; init-essential.el end
