;;; init-wakatime.el --- WakaTime Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration for wakatime.

;;; Code:

(defvar *wakatime-cli-executable* "c:/Users/chuan/Downloads/wakatime-cli-windows-amd64.exe"
  "Your wakatime-cli installation path including file name.")

(defvar *wakatime-api-key-file* "c:/Users/chuan/Downloads/wakatime-apikey.txt"
  "The file storing your WakaTime Apikey string, see <https://wakatime.com/settings/api-key>.")

(use-package wakatime-mode
  :ensure t
  :config
  (when (and (file-exists-p *wakatime-cli-executable*)
             (file-exists-p *wakatime-api-key-file*))
    (let ((apikey (string-trim
                   (with-temp-buffer
                     (insert-file-contents *wakatime-api-key-file*)
                     (buffer-string)))))
      (unless (string-empty-p apikey)
        (global-wakatime-mode)
        (setq wakatime-cli-path *wakatime-cli-executable*
              wakatime-api-key apikey)))))

(provide 'init-wakatime)

;;; init-wakatime.el ends here
