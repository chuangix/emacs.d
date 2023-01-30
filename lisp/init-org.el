;;; init-orig.el --- Org-Mode Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration of org-mode.

;;; Code:

(use-package graphviz-dot-mode
  :ensure t)

(when (file-exists-p (locate-user-emacs-file "lisp/user-preference.el"))
  (require 'user-preference)
  (let ((graphviz-bin (alist-get 'org-graphviz-bin *user-preference*))
        (ditaa-jar (alist-get 'org-ditaa-jar *user-preference*))
        (plantuml-jar (alist-get 'org-plantuml-jar *user-preference*)))
    (unless (eq nil graphviz-bin) (setenv "PATH" (concat graphviz-bin ";" (getenv "PATH"))))
    (unless (eq nil ditaa-jar) (setq org-ditaa-jar-path ditaa-jar))
    (unless (eq nil plantuml-jar) (setq org-plantuml-jar-path plantuml-jar))))

(use-package org
  :config
  (org-babel-do-load-languages 'org-babel-load-languages '((dot . t)
                                                           (ditaa . t)
                                                           (plantuml . t))))

(provide 'init-org)

;;; init-org.el ends here
