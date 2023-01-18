;;; init-tool.el --- The basic settings -*- lexical-binding: t -*-

(use-package which-key
  :ensure t
  :hook (after-init . which-key-mode)
  :config (which-key-setup-side-window-right)
  :custom (which-key-idle-delay 1.5))

(use-package session
  :ensure t
  :config (session-initialize)
  :custom (desktop-save-mode t))

(use-package elscreen
  :ensure t)

(use-package centaur-tabs
  :ensure t)

(use-package avy
  :ensure t
  :bind
  (("M-g c" . avy-goto-char-timer)
   ("M-g l" . avy-goto-line))
  :custom
  (avy-background t)
  (avy-all-windows nil)
  (avy-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l ?q ?w ?e ?r ?u ?i ?o ?p)))

(use-package ace-window
  :ensure t
  :bind
  (("C-x o"   . ace-window))
  (("C-x C-o" . ace-swap-window))
  :custom
  (aw-ignore-current t)
  (aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l ?q ?w ?e ?r ?u ?i ?o ?p)))

(use-package helm
  :ensure t
  :bind
  (("M-x"     . helm-M-x)
   ("C-x C-f" . helm-find-files)
   ("M-y"     . helm-show-kill-ring)))

(use-package helm-descbinds
  :after helm
  :ensure t)

(use-package fanyi
  :ensure t
  :commands fanyi-dwim fanyi-dwim2)

(use-package mwim
  :ensure t
  :bind
  ("C-a" . mwim-beginning-of-code-or-line)
  ("C-e" . mwim-end-of-code-or-line))

(use-package undo-tree
  :ensure t
  :hook (after-init . global-undo-tree-mode))

(use-package good-scroll
  :ensure t
  :if window-system
  :hook (after-init . good-scroll-mode))

(use-package smart-mode-line
  :ensure t
  :hook (after-init . sml/setup))

(use-package multiple-cursors
  :ensure t
  :after hydra
  :bind
  (("C-x C-h m" . hydra-multiple-cursors/body)
   ("C-S-<mouse-1>" . mc/toggle-cursor-on-click))
  :hydra (hydra-multiple-cursors
	  (:hint nil)
	  "
Up^^             Down^^           Miscellaneous           % 2(mc/num-cursors) cursor%s(if (> (mc/num-cursors) 1) \"s\" \"\")
------------------------------------------------------------------
 [_p_]   Prev     [_n_]   Next     [_l_] Edit lines  [_0_] Insert numbers
 [_P_]   Skip     [_N_]   Skip     [_a_] Mark all    [_A_] Insert letters
 [_M-p_] Unmark   [_M-n_] Unmark   [_s_] Search      [_q_] Quit
 [_|_] Align with input CHAR       [Click] Cursor at point"
	  ("l" mc/edit-lines :exit t)
	  ("a" mc/mark-all-like-this :exit t)
	  ("n" mc/mark-next-like-this)
	  ("N" mc/skip-to-next-like-this)
	  ("M-n" mc/unmark-next-like-this)
	  ("p" mc/mark-previous-like-this)
	  ("P" mc/skip-to-previous-like-this)
	  ("M-p" mc/unmark-previous-like-this)
	  ("|" mc/vertical-align)
	  ("s" mc/mark-all-in-region-regexp :exit t)
	  ("0" mc/insert-numbers :exit t)
	  ("A" mc/insert-letters :exit t)
	  ("<mouse-1>" mc/add-cursor-on-click)
	  ;; Help with click recognition in this hydra
	  ("<down-mouse-1>" ignore)
	  ("<drag-mouse-1>" ignore)
	  ("q" nil)))

(use-package google-this
  :ensure t
  :hook (after-init . google-this-mode))

(use-package restart-emacs
  :ensure t
  :bind
  ("C-x C" . restart-emacs))

(provide 'init-tool)

;;; init-tool.el ends here
