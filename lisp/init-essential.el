;;; -*- lexical-binding: t -*-

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

(use-package hungry-delete
  :ensure t
  :bind (("C-c DEL" . hungry-delete-backward)
         ("C-c d" . hungry-delete-forward)))

(use-package move-dup
  :ensure t
  :hook (after-init . global-move-dup-mode)
  :bind
  ("<M-up>" . move-dup-move-lines-up)
  ("<M-down>" . move-dup-move-lines-down))

(use-package undo-tree
  :ensure t
  :hook (after-init . global-undo-tree-mode)
  :config
  (setq undo-tree-visualizer-timestamps t
        undo-tree-auto-save-history t))

(use-package simple
  :hook (after-init . auto-save-visited-mode))

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
