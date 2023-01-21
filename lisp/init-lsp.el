;;; init-lsp.el --- LSP Configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package lsp-mode
  :ensure t
  :hook ((c++-mode . lsp-deferred)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred))

(use-package lsp-ui
  :after lsp-mode
  :ensure t
  :commands lsp-ui-mode)

(use-package lsp-ivy
  :after lsp-mode
  :ensure t
  :commands lsp-ivy-workspace-symbol)

(use-package lsp-treemacs
  :after lsp-mode
  :ensure t
  :commands lsp-treemacs-errors-list)

(use-package dap-mode
  :after lsp-mode
  :ensure t)

(provide 'init-lsp)

;;; init-lsp.el ends here
