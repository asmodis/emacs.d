(provide 'gd-hippie-expand)

;hippie-expand is too hip for my taste
(setq hippie-expand-try-functions-list
      '(yas/hippie-try-expand 
	try-expand-dabbrev 
	try-expand-dabbrev-all-buffers 
	try-expand-dabbrev-from-kill
	try-complete-file-name-partially
	try-complete-file-name 
	try-expand-all-abbrevs))

;NOTE: maybe one should add 
; try-complete-lisp-symbol-partially 
; try-complete-lisp-symbol 
;locally for lisp-mode

