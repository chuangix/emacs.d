;;; init-avy.el --- Avy Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration all about avy and some plugins depending
;; on avy.

;;; Code:

(use-package avy
  :config
  (setq avy-background t
        avy-all-windows t
        avy-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l ?q ?w ?e ?r ?u ?i ?o ?p))
  :bind
  ("C-c c" . avy-goto-char-timer)
  ("C-c w" . avy-goto-word-1)
  ("C-c l" . avy-goto-line)
  ("C-c L" . avy-copy-line)
  ("C-c R" . avy-copy-region))

(use-package avy-zap
  :bind
  ("C-c Z" . avy-zap-to-char))

(use-package ivy-avy)

(provide 'init-avy)

;;; init-avy.el ends here
