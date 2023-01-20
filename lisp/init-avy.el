;;; -*- lexical-binding: t -*-

(use-package avy
  :ensure t
  :bind
  (("M-g c" . avy-goto-char-timer)
   ("M-g l" . avy-goto-line))
  :custom
  (avy-background t)
  (avy-all-windows t)
  (avy-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l ?q ?w ?e ?r ?u ?i ?o ?p)))

(use-package avy-zap
  :after avy
  :ensure t)

(provide 'init-avy)
