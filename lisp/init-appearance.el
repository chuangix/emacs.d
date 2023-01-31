;;; init-appearance.el --- Appearance Configuration -*- lexical-binding: t -*-

;;; Commentary:

;; This is the configuration about appearance including font,
;; mode-line, theme, etc.

;;; Code:

(setq inhibit-startup-screen t
      inhibit-compacting-font-caches t
      ring-bell-function 'ignore
      blink-cursor-mode nil
      show-paren-when-point-in-periphery t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(line-number-mode -1)
(column-number-mode -1)
(size-indication-mode -1)
(toggle-truncate-lines -1)

(when (memq system-type '(ms-doc windows-nt cygwin))
  (set-face-attribute 'default nil
                      :font "Consolas"
                      :height 110)
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
		      charset (font-spec
                               :family "微软雅黑"
                               :size 20))))

(if (display-graphic-p)
    (progn
      (global-hl-line-mode 1)
      (use-package doom-themes
        :config
        (load-theme 'doom-one t)
        (doom-themes-org-config))
      (use-package page-break-lines)
      (use-package all-the-icons)
      (use-package dashboard
        :config
        (setq dashboard-projects-backend 'projectile)
        (setq dashboard-items '((recents  . 5)
                                (bookmarks . 5)
                                (projects . 5)
                                (agenda . 5)
                                (registers . 5)))
        (setq dashboard-item-names '(("Recent Files:" . "Recently opened files:")
                                     ("Agenda for today:" . "Today's agenda:")
                                     ("Agenda for the coming week:" . "Agenda:")))
        (setq dashboard-startup-banner 'logo)
        (setq dashboard-center-content t)
        (setq dashboard-set-heading-icons t)
        (setq dashboard-set-file-icons t)
        (setq dashboard-set-footer t)
        (dashboard-modify-heading-icons '((recents . "file-text")
                                          (bookmarks . "book")))
        (setq dashboard-set-navigator t)
        (dashboard-setup-startup-hook)))
  (load-theme 'leuven t))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package smart-mode-line
  :config
  (setq sml/no-confirm-load-theme t)
  (setq sml/theme 'dark)
  (sml/setup))

(provide 'init-appearance)

;;; init-appearance.el ends here
