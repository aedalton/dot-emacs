;; Desktop Mode
;; (desktop-save-mode 1)

;; Visual Directory Tree
(require 'neotree)
(global-set-key [f8]
                'neotree-toggle)

;; Shift key to move between windows
(windmove-default-keybindings)

;; Projectile commands
(require 'projectile)
(global-set-key [f7]
                'projectile-mode)
(global-set-key (kbd "C-h C-f")
                'find-function)
(global-set-key (kbd "C-t")
                'projectile-find-file)

(global-set-key (kbd "C-x _")
                'minimize-window)

;; Predict/Match for finds i.e. C-x f
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Ag: Emacs frontend to the silver searcher
(setq ag-highlight-search t)
(global-set-key (kbd "C-d")
                'ag) ; Alt+a

;; Ag: uncomment to not open a new results window
;; (setq ag-reuse-window 't)

(defun toggle-maximize-buffer ()
  "Maximize buffer"
  (interactive)
  (if (= 1 (length (window-list)))
      (jump-to-register '_)
    (progn
      (window-configuration-to-register '_)
      (delete-other-windows))))

(global-set-key (kbd "C-x p")
                'toggle-maximize-buffer)

;; Unbind Pesky Sleep Button
(global-unset-key [(control z)])
(global-unset-key [(control x)
                   (control z)])
;; Windows Style Undo
(global-set-key [(control z)]
                'undo)

(global-set-key [remap move-beginning-of-line]
                #'crux-move-beginning-of-line)

(global-set-key (kbd "C-c n")
                #'goto-char)

(defalias 'qrr 'query-replace-regexp)

(provide 'init-workflow)
;;; init-workflow.el ends here
