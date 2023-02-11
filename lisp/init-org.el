;;; init-orig.el --- Org-Mode Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration of org-mode.

;;; Code:

(eval-and-compile
  (when (file-exists-p (locate-user-emacs-file "lisp/user-preference.el"))
    (require 'user-preference)
    (let ((dot-executable (alist-get 'dot-executable *user-preference*))
          (ditaa-jar (alist-get 'ditaa-jar *user-preference*))
          (plantuml-jar (alist-get 'plantuml-jar *user-preference*)))
      (unless (eq nil dot-executable)
        (use-package graphviz-dot-mode)
        (add-to-list 'exec-path (file-name-directory dot-executable)))
      (unless (eq nil ditaa-jar) (defconst org-ditaa-jar-path ditaa-jar))
      (unless (eq nil plantuml-jar) (defconst org-plantuml-jar-path plantuml-jar)))))

(org-babel-do-load-languages 'org-babel-load-languages '((dot . t)
                                                         (ditaa . t)
                                                         (plantuml . t)))

(provide 'init-org)

;;; init-org.el ends here
