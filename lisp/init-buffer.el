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

;; (custom-set-faces
;;  ;; '(font-lock-comment-face ((t (:foreground "color-251"))))
;;  '(font-lock-string-face ((t (:foreground "magenta"))))
;;  '(font-lock-keyword-face ((t (:foreground "brightgreen"))))
;;  '(font-lock-builtin-face ((t (:foreground "blue"))))
;;  '(font-lock-function-name-face ((t (:foreground "cyan"))))
;;  '(font-lock-variable-name-face ((t (:foreground "yellow"))))
;;  '(font-lock-comment-face ((t (:foreground "brightblack"))))
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )


(custom-set-faces
 '(font-lock-comment-face ((t (:foreground "color-251"))))
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init-buffer)
;;; init-buffer.el ends here
