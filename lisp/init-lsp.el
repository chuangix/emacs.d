;;; init-lsp.el --- LSP Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration all about lsp and some plugins depending
;; on lsp.

;;; Code:

(use-package lsp-mode
  :hook ((c++-mode . lsp-deferred)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred))

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package lsp-ivy
  :commands lsp-ivy-workspace-symbol)

(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list)

(use-package dap-mode)

(provide 'init-lsp)

;;; init-lsp.el ends here
