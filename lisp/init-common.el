;;; init-common.el --- Common Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the common configuration which should be always used by
;; anyone who want to use this configuration suite .emacs.d.

;;; Code:

(when (eq system-type 'darwin)
  (defconst mac-command-modifier 'meta)
  (defconst mac-option-modifier 'none))

(when (memq system-type '(ms-doc windows-nt cygwin))
  (setq w32-recognize-altgr nil))

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

(setq-default indent-tabs-mode nil)
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq display-raw-bytes-as-hex t)

(global-auto-revert-mode 1)
(auto-save-visited-mode 1)
(recentf-mode 1)

(use-package hungry-delete
  :bind (("C-c DEL" . hungry-delete-backward)
         ("C-c d" . hungry-delete-forward)))

(use-package move-dup
  :hook (after-init . global-move-dup-mode)
  :bind
  ("<M-up>" . move-dup-move-lines-up)
  ("<M-down>" . move-dup-move-lines-down))

(use-package highlight-symbol
  :config
  (highlight-symbol-mode)
  :bind
  (("<f3>" . highlight-symbol)
   ("C-<f3>" . highlight-symbol-remove-all)))

(use-package undo-tree
  :hook (after-init . global-undo-tree-mode)
  :config
  (setq undo-tree-visualizer-timestamps t
        undo-tree-auto-save-history t))

(provide 'init-common)

;;; init-common.el ends here
