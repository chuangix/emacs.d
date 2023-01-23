;;; use-wakatime.el --- Enable Waka Time -*- lexical-binding: t -*-

;;; Commentary:

;; This is a toggle file for wakatime, which can be called with
;; require from init.el by users manually.

;;; Code:

(use-package wakatime-mode
  :ensure t
  :config
  (global-wakatime-mode)
  (setq wakatime-cli-path "c:/Users/chuan/Downloads/wakatime-cli-windows-amd64.exe"
        wakatime-api-key (string-trim
                          (with-temp-buffer
                            (insert-file-contents "c:/Users/chuan/Downloads/wakatime-apikey.txt")
                            (buffer-string)))))

(provide 'use-wakatime)

;;; use-wakatime.el ends here
