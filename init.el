;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-command "/usr/local/bin/pandoc")
 '(package-selected-packages (quote (srefactor python-docstring company-jedi php-mode
                                               sphinx-doc markdown-mode handlebars-mode go-mode
                                               yasnippet-classic-snippets yasnippet flycheck
                                               crux web-beautify flymd web-mode json-mode
                                               w3 py-autopep8 color-theme ag terraform-mode
                                               fill-column-indicator projectile aggressive-indent))))

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/")
             t)

(add-hook 'python-mode-hook
          (lambda ()
            (require 'sphinx-doc)
            (sphinx-doc-mode t)))

;; bash indents
'(sh-basic-offset 2)
'(sh-indentation 2)
'(smie-indent-basic 2)
(add-hook 'sh-mode-hook 'flycheck-mode)

;; Shift key to move between windows
(windmove-default-keybindings)

;; Visual Directory Tree
(require 'neotree)
(global-set-key [f8]
                'neotree-toggle)

;; Default FCI
(require 'fill-column-indicator)
(setq-default fill-column 80)

;; Column Numbers
(setq column-number-mode t)

;; Desktop Mode
;; (desktop-save-mode 1)

;; Unbind Pesky Sleep Button
(global-unset-key [(control z)])
(global-unset-key [(control x)
                   (control z)])
;; Windows Style Undo
(global-set-key [(control z)]
                'undo)

;; Automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))
;; Only show bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty
                                  space-after-tab))
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'projectile)
(global-set-key [f7]
                'projectile-mode)
(global-set-key (kbd "C-h C-f")
                'find-function)
(global-set-key (kbd "C-t")
                'projectile-find-file)

(global-set-key (kbd "C-x _")
                'minimize-window)

(defalias 'qrr 'query-replace-regexp)

;; Predict/Match for finds i.e. C-x f
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Ag: Emacs frontend to the silver searcher
(setq ag-highlight-search t)
(global-set-key (kbd "C-d")
                'ag) ; Alt+a

;; ag: to not open a new results window
;; (setq ag-reuse-window 't)


(set-face-attribute 'region nil :background "#666")

(setq py-autopep8-options '("--max-line-length=80"))

;; only spaces
(add-hook 'python-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq python-indent 4)
            (setq tab-width 4))
          (untabify (point-min)
                    (point-max)))
(put 'downcase-region 'disabled nil)

(require 'flymd)
(defun my-flymd-browser-function (url)
  (let ((process-environment (browse-url-process-environment)))
    (apply 'start-process
           (concat "firefox " url)
           nil
           "/usr/bin/open"
           (list "-a" "firefox" url))))
(setq flymd-browser-open-function 'my-flymd-browser-function)

(setq backup-directory-alist `(("." . "~/.saves")))

(global-set-key [remap move-beginning-of-line]
                #'crux-move-beginning-of-line)
(global-set-key (kbd "C-c n")
                #'goto-char)

(setq-default indent-tabs-mode nil)
(put 'upcase-region 'disabled nil)

;; highlighter
(set-face-attribute 'region nil :background "brightyellow")

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
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
