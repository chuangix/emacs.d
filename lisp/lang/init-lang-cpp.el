;;; init-lang-cpp.el --- CPP Language Configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package cc-mode
  :mode ("\\.cc\\'\\|\\.cxx\\'\\|\\.cpp\\'\\|\\.hxx\\'\\|\\.hpp\\'" . c++-mode))

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

(provide 'init-lang-cpp)

;;; init-lang-cpp.el ends here
