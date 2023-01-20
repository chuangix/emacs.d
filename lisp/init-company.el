;;; init-company.el --- Company Configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package company
  :ensure t
  :diminish
  :config
  (global-company-mode)
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-align-annotations t)
  (setq company-idle-delay 0.0)
  (setq company-show-quick-access t)
  (setq company-selection-wrap-around t)
  (setq company-transformers '(company-sort-by-occurrence)))

(use-package company-box
  :after company
  :ensure t
  :diminish
  :if window-system
  :hook (company-mode . company-box-mode))

(provide 'init-company)

;;; init-company.el ends here
