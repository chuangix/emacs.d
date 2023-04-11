;;; init-misc.el --- Miscellaneous Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is some miscellaneous configuration which are recommended and
;; optional for users.

;;; Code:

(eval-and-compile
  (and (require 'user-preference nil t)
       (let ((cli-executable (alist-get 'wakatime-cli-executable *user-preference*))
             (api-key (alist-get 'wakatime-api-key *user-preference*)))
         (or (eq nil cli-executable)
             (eq nil api-key)
             (use-package wakatime-mode
               :config
               (global-wakatime-mode)
               (setq wakatime-cli-path cli-executable)
               (setq wakatime-api-key api-key))))))

(provide 'init-misc)

;;; init-misc.el ends here
