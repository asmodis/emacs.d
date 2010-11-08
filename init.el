 ;;;;;;;;;;;;;;;
;;; Constants ;;;
 ;;;;;;;;;;;;;;;

(defconst gd-emacs-dir "~/.emacs.d/")
(defconst gd-config-dir (concat gd-emacs-dir "config"))
(defconst gd-pkg-dir (concat gd-emacs-dir "pkg"))
(defconst gd-backup-dir (concat gd-emacs-dir "backup"))

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Adjusting emacs load path ;;;
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path gd-config-dir)
(add-to-list 'load-path gd-pkg-dir)


 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Loading my configuration files ;;;
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(dolist (configfile (split-string (shell-command-to-string (concat "ls" gd-config-dir))))
  (load (replace-regexp-in-string "\\.el" "" configfile)))
