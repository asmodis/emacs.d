(provide 'gd-latex-config)

(load "auctex.el" nil t t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook (lambda ()
   (outline-minor-mode t)
   (auto-fill-mode t)
   (face-remap-add-relative 'font-lock-comment-face 
			    :foreground "gray30" :slant 'italic)
   (face-remap-add-relative 'font-lock-comment-delimiter-face 
			    :foreground "gray30" :slant 'italic)
   (face-remap-add-relative 'font-lock-string-face :foreground "dark olive green")
   (face-remap-add-relative 'font-lock-keyword-face 
			    :foreground "saddle brown")
   (face-remap-add-relative 'font-lock-function-name-face :foreground "goldenrod")
   (face-remap-add-relative 'font-lock-variable-name-face
			    :foreground "white" :slant 'italic)
   (face-remap-add-relative 'font-lock-type-face
			    :foreground "white")
   (face-remap-add-relative 'font-lock-constant-face :foreground "royal blue")
   (face-remap-add-relative 'font-lock-warning-face 
			    :background "yellow" :foreground "black")
;(face-remap-add-relative 'font-lock-preprocessor-face TODO)
;(face-remap-add-relative 'font-lock-negation-char-face TODO)
;(face-remap-add-relative 'font-lock-doc-face TODO)
;(face-remap-add-relative 'font-lock-builtin-face TODO)
))
