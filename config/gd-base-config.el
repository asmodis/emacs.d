(provide 'gd-base-config)

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Auto-generated stuff configuration ;;;
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Keep customize stuff seperate
(setq custom-file (concat gd-emacs-dir "/custom.el"))

;;; Put all backups in a single directory
(setq make-backup-files t ;; do make backups
  backup-by-copying t     ;; and copy them here
  backup-directory-alist '(("." . gd-backup-dir)) 
  version-control t
  kept-new-versions 2
  kept-old-versions 5
  delete-old-versions t)


 ;;;;;;;;;;;;;;
;;; Encoding ;;;
 ;;;;;;;;;;;;;;
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")       ; prefer utf-8 for language settings
(set-input-method nil)                   ; no funky input for normal editing;
(setq read-quoted-char-radix 10)         ; use decimal, not octal


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
