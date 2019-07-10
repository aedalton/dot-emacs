;; highlighter
(set-face-attribute 'region nil :background "brightyellow")

;; Default FCI
(require 'fill-column-indicator)
(setq-default fill-column 80)

;; Column Numbers
(setq column-number-mode t)

;; Automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))
;; Only show bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty
                                  space-after-tab))

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'init-buffer)
;;; init-buffer.el ends here
