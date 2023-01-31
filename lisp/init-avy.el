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
  (("C-c a" . hydra-avy/body))
  :hydra (hydra-avy
          (:hint nil)
          "
^Character^         ^Word^           ^Line^            ^Region^
--------------------------------------------------------------------------
_c_ Goto Char    _w_ Goto Word    _l_ Goto Line    _r_ Copy Region
"
          ("c" avy-goto-char-timer :exit t)
          ("w" avy-goto-word-0 :exit t)
          ("l" avy-goto-line :exit t)
          ("r" avy-copy-region :exit t)
          ("q" nil)))

(use-package avy-zap)

(provide 'init-avy)

;;; init-avy.el ends here
