;;; init-hydra.el --- Hydra Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration about key bindings based on Hydra.

;;; Code:

(use-package major-mode-hydra
  :bind
  ("M-SPC" . major-mode-hydra))

(defvar *hydra-cursor-movement*
  '("Cursor Movement"
    (("c" avy-goto-char-timer "jump to char" :exit t)
     ("w" avy-goto-word-or-subword-1 "jump to word" :exit t)
     ("l" avy-goto-line "jump to line" :exit t))))

(eval
 `(major-mode-hydra-define emacs-lisp-mode (:title "Elisp" :color amaranth :quit-key "q")
    ,(append *hydra-cursor-movement* nil)))

(eval
 `(major-mode-hydra-define c++-mode (:title "C++" :color amaranth :quit-key "q")
    ,(append *hydra-cursor-movement* nil)))

(provide 'init-hydra)

;;; init-hydra.el ends here
