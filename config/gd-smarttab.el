(provide 'gd-smarttab)

(require 'smart-tab)
(setq smart-tab-using-hippie-expand t)
(add-to-list 'hippie-expand-try-functions-list 'yas/hippie-try-expand)
(global-smart-tab-mode 1)
