(provide 'gd-look-config)

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; General appereance of a frame ;;;
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))
(add-to-list 'default-frame-alist '(height . 32))
(add-to-list 'default-frame-alist '(width . 90))
(add-to-list 'default-frame-alist '(background-mode . "dark"))
(add-to-list 'default-frame-alist '(background-color . "gray3"))
(add-to-list 'default-frame-alist '(foreground-color . "gray95"))
(add-to-list 'default-frame-alist '(cursor-color . "gray70"))
(add-to-list 'default-frame-alist '(mouse-color . "gray70"))
(add-to-list 'default-frame-alist '(cursor-type . hbar))

(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))


 ;;;;;;;;;;
;;; Misc ;;;
 ;;;;;;;;;;
(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)

(show-paren-mode t)
(setq show-paren-style "mixed")

(setq query-replace-highlight t)
(setq search-highlight t)
(transient-mark-mode t)

(setq font-lock-maximum-decoration t)
(global-font-lock-mode t)
