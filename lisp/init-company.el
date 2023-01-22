;;; init-company.el --- Company Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration all about company and some plugins
;; depending on company.

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
  :when (display-graphic-p)
  :ensure t
  :diminish
  :hook (company-mode . company-box-mode))

(provide 'init-company)

;;; init-company.el ends here
