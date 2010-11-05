(provide 'gd-base-config)

;;; Keep customize stuff seperate
(setq custom-file (concat gd-emacs-dir "/custom.el"))

;;; Don't make backups
;;; (TODO: put all backups in a single directory)
(setq make-backup-files nil)

;;; Require stuff which is needed all the time
(require 'cl)

;;; Disable unneeded things
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)


;;; Turn on some usful things
(show-paren-mode t)
(setq show-paren-style "mixed")
(setq query-replace-highlight t)
(setq search-highlight t)
(transient-mark-mode t)
(setq font-lock-maximum-decoration t)
(global-font-lock-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq require-final-newline t)

;Setting default major mode to something workable
(setq default-major-mode 'text-mode)
