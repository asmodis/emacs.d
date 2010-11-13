(require 'easy-mmode)

(defgroup clevertab nil
  "Options for `clevertab-mode'.")



(defun clevertab-indent-or-expand ()
  "Trys to indent current line, if point is unchanged try to expand."
  (interactive)
  (let ((tmp-point (point)))
    (progn
      (message "Indent-or-expand. Point is %s" tmp-point)
      (indent-for-tab-command)
      (message "Tried indent. Point is %s" (point))
      (message "Tried indent. tmp-point is %s" tmp-point)
      (if (equal tmp-point (point))
	  (if (looking-at "\\_>") (hippie-expand nil))))))

(defun clevertab ()
  "Firts trys to indent the line or the region, if point is unchanged try to exapnd with hippie-expand"
  (interactive)
  (if mark-active 
      (indent-region (region-beginning) (region-end))
    (clevertab-indent-or-expand)))

(defun clevertab-mode-on ()
  "Turn on `clevertab-mode'."
    (clevertab-mode 1))

(defun clevertab-mode-off ()
  "Turn off `clevertab-mode'."
  (clevertab-mode -1))


(define-minor-mode clevertab-mode
  "Enable `clevertab' to be used in place of tab.

With no argument, this command toggles the mode.
Non-null prefix argument turns on the mode.
Null prefix argument turns off the mode."
  :group 'clevertab
  :require 'clevertab
  :lighter " cltab"
  :keymap '( ("\t" . clevertab) ([(tab)] . clevertab))
  (if clevertab-mode (when (or (minibufferp) buffer-read-only) (clevertab-mode-off))))

(define-globalized-minor-mode global-clevertab-mode
  clevertab-mode
  clevertab-mode-on
  :group 'clevertab)

(provide 'clevertab)
