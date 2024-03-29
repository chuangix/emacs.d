;;; init-lang-cpp.el --- CPP Language Configuration -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(use-package cc-mode
  :ensure nil
  :mode ("\\.cc\\'\\|\\.cxx\\'\\|\\.cpp\\'\\|\\.hxx\\'\\|\\.hpp\\'" . c++-mode))

(defconst flycheck-clang-language-standard "c++11")

(eval-and-compile
  (and (require 'user-preference nil t)
       (let ((clangd (alist-get 'clangd-executable *user-preference*))
             (lldb (alist-get 'lldb-executable *user-preference*)))
         (unless (eq nil clangd)
           (setq lsp-clients-clangd-executable clangd)
           (setq lsp-clients-clangd-args
                 '("-j=2"
                   "--background-index"
                   "--clang-tidy"
                   "--completion-style=bundled"
                   "--pch-storage=memory"
                   "--header-insertion=iwyu"
                   "--header-insertion-decorators")))
         ;; (unless (eq nil lldb)
         ;;   (use-package dap-lldb
         ;;     :config
         ;;     (setq dap-lldb-debug-program lldb)
         ;;     (setq dap-lldb-debugged-program-function
	 ;;           (lambda () (read-file-name "Select file to debug: ")))))
         )))

(use-package cmake-mode
  :mode (("CMakeLists\\.txt\\'" . cmake-mode)
         ("\\.cmake\\'" . cmake-mode))
  :bind (:map cmake-mode-map
              ("C-c d" . cmake-help)))

(use-package cmake-font-lock
  :hook (cmake-mode . cmake-font-lock-activate))

(provide 'init-lang-cpp)

;;; init-lang-cpp.el ends here
