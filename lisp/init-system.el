;;; init-system.el --- The basic settings -*- lexical-binding: t -*-

(defconst *is-mac* (eq system-type 'darwin))
(defconst *is-linux* (eq system-type 'gnu/linux))
(defconst *is-windows* (or (eq system-type 'ms-doc) (eq system-type 'windows-nt)))

(when *is-mac*
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'none))

(when *is-windows*
  (setq  w32-recognize-altgr nil))

(provide 'init-system)

;;; init-system.el ends here
