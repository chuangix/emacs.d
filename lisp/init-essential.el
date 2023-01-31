;;; init-essential.el --- Essential Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the essential configuration which should be always used by
;; anyone who want to use this configuration suite .emacs.d.

;;; Code:

(when (eq system-type 'darwin)
  (setq mac-command-modifier 'meta
        mac-option-modifier 'none))

(when (memq system-type '(ms-doc windows-nt cygwin))
  (setq w32-recognize-altgr nil))

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

(setq create-lockfiles nil
      make-backup-files nil
      auto-save-default nil
      display-raw-bytes-as-hex t)

(global-auto-revert-mode 1)
(auto-save-visited-mode 1)
(recentf-mode 1)

(use-package session
  :config
  (session-initialize)
  (desktop-save-mode 1)
  (setq desktop-load-locked-desktop t))

(setq-default indent-tabs-mode nil)

(use-package hungry-delete
  :bind (("C-c DEL" . hungry-delete-backward)
         ("C-c d" . hungry-delete-forward)))

(use-package move-dup
  :diminish
  :hook (after-init . global-move-dup-mode)
  :bind
  ("<M-up>" . move-dup-move-lines-up)
  ("<M-down>" . move-dup-move-lines-down))

(use-package highlight-symbol
  :diminish
  :config
  (highlight-symbol-mode)
  :bind
  (("<f3>" . highlight-symbol)
   ("C-<f3>" . highlight-symbol-remove-all)))

(use-package undo-tree
  :diminish
  :hook (after-init . global-undo-tree-mode)
  :config
  (setq undo-tree-visualizer-timestamps t
        undo-tree-auto-save-history t))

(use-package restart-emacs
  :bind
  ("C-x C" . restart-emacs))

(provide 'init-essential)

;;; init-essential.el ends here
