;;; init-wakatime.el --- WakaTime Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration for wakatime.

;;; Code:

(use-package wakatime-mode
  :ensure t
  :config
  (when (file-exists-p (locate-user-emacs-file "lisp/user-preference.el"))
    (let ((cli-executable (cdr (assoc "wakatime-cli-executable" *user-preference*)))
          (api-key (cdr (assoc "wakatime-api-key" *user-preference*))))
      (unless (or (eq nil cli-executable)
                  (eq nil api-key)
                  (not (file-exists-p cli-executable))
                  (string-empty-p api-key))
        (global-wakatime-mode)
        (setq wakatime-cli-path cli-executable
              wakatime-api-key api-key)))))

(provide 'init-wakatime)

;;; init-wakatime.el ends here
