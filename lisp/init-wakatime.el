;;; init-wakatime.el --- WakaTime Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration for wakatime.

;;; Code:

(use-package wakatime-mode
  :ensure t
  :config
  (when (file-exists-p (locate-user-emacs-file "lisp/user-preference.el"))
    (let ((cli-executable (alist-get 'wakatime-cli-executable *user-preference*))
          (api-key (alist-get 'wakatime-api-key *user-preference*)))
      (or (eq nil cli-executable)
          (eq nil api-key)
          (progn
            (global-wakatime-mode)
            (setq wakatime-cli-path cli-executable
                  wakatime-api-key api-key))))))

(provide 'init-wakatime)

;;; init-wakatime.el ends here
