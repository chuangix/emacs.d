;;; -*- lexical-binding: t -*-

(when (eq system-type 'darwin)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'none))

(when (or (eq system-type 'ms-doc)
          (eq system-type 'windows-nt))
  (setq w32-recognize-altgr nil))

(setq-default indent-tabs-mode nil)

(setq create-lockfiles nil
      display-raw-bytes-as-hex t)

(setq make-backup-files nil
      auto-save-default nil)

(provide 'init-essential)
