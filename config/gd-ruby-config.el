(provide 'gd-ruby-config)

;;Associating files with ruby
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))

;;Loading packages for ruby
(require 'autopair)

;;Ruby mode hook

(add-hook 'ruby-mode-hook (lambda ()
  ;Activating autopairing
  (autopair-mode)
  ;Setting up fontlocking
  (face-remap-add-relative 'font-lock-comment-face 
			   :foreground "gray30" :slant 'italic)
  (face-remap-add-relative 'font-lock-comment-delimiter-face 
			   :foreground "gray30" :slant 'italic)
  (face-remap-add-relative 'font-lock-string-face :foreground "dark olive green")
  (face-remap-add-relative 'font-lock-keyword-face 
			   :foreground "saddle brown" :weight 'bold)
  (face-remap-add-relative 'font-lock-function-name-face :foreground "goldenrod")
  (face-remap-add-relative 'font-lock-variable-name-face
			   :foreground "white" :slant 'italic)
  (face-remap-add-relative 'font-lock-type-face
			   :foreground "white" :weight 'bold)
  (face-remap-add-relative 'font-lock-constant-face :foreground "royal blue")
  (face-remap-add-relative 'font-lock-warning-face 
			   :background "yellow" :foreground "black")
;(face-remap-add-relative 'font-lock-preprocessor-face TODO)
;(face-remap-add-relative 'font-lock-negation-char-face TODO)
;(face-remap-add-relative 'font-lock-doc-face TODO)
;(face-remap-add-relative 'font-lock-builtin-face TODO)
  (font-lock-add-keywords nil
    '(("\\<\\(TODO\\)):" 1 font-lock-warning-face prepend)
      ("\\<\\([0-9]+\\.?[0-9]*\\)\\>" 1 font-lock-string-face)
      ("^[^\n]\\{80\\}\\(.*\\)$" 1 font-lock-warning-face t)))

  (local-set-key "\r" 'reindent-then-newline-and-indent)
  (local-set-key "\C-c\C-i" 'indent-region)
))

;;Setting up flymake
;TODO
