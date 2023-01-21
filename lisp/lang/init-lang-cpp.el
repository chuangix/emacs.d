;;; init-lang-cpp.el --- CPP Language Configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package cc-mode
  :mode ("\\.cc\\'\\|\\.cxx\\'\\|\\.cpp\\'\\|\\.hxx\\'\\|\\.hpp\\'" . c++-mode)
  :config
  (setq flycheck-clang-language-standard "c++11")
  (with-no-warnings
    (defconst ccls-args nil)
    (defconst clangd-args '("-j=2"
                            "--malloc-trim"
                            "--background-index"
                            "--clang-tidy"
                            "--completion-style=bundled"
                            "--pch-storage=memory"
                            "--header-insertion=iwyu"
                            "--header-insertion-decorators"))
    (with-eval-after-load 'lsp-mode
      (cond ((executable-find "clangd") (setq lsp-clients-clangd-executable "clangd"
                                              lsp-clients-clangd-args clangd-args))
            ((executable-find "ccls") (setq lsp-clients-clangd-executable "ccls"
                                            lsp-clients-clangd-args ccls-args))))))

(use-package cmake-mode
  :ensure t
  :mode (("CMakeLists\\.txt\\'" . cmake-mode)
         ("\\.cmake\\'" . cmake-mode))
  :bind (:map cmake-mode-map
              ("C-c d" . cmake-help)))

(use-package cmake-font-lock
  :after cmake-mode
  :ensure t
  :hook (cmake-mode . cmake-font-lock-activate))

(use-package dap-lldb
  :after dap-mode
  :config
  (setq dap-lldb-debug-program '("C:/Program Files/LLVM/bin/lldb-vscode.exe"))
  (setq dap-lldb-debugged-program-function
	(lambda () (read-file-name "Select file to debug: "))))

(provide 'init-lang-cpp)

;;; init-lang-cpp.el ends here
