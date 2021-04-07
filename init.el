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
 '(package-selected-packages
   '(helm-ag-r srefactor python-docstring company-jedi php-mode sphinx-doc markdown-mode handlebars-mode go-mode yasnippet-classic-snippets yasnippet flycheck crux web-beautify flymd web-mode json-mode w3 py-autopep8 color-theme ag terraform-mode fill-column-indicator projectile aggressive-indent)))

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/")
             t)

(require 'guide-key)
(setq guide-key/guide-key-sequence '("C-x r" "C-x 4"))
(guide-key-mode 1)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'init-workflow)
(require 'init-buffer)
(require 'init-python)
(require 'init-flymd)

;; bash indents
'(sh-basic-offset 2)
'(sh-indentation 2)
'(smie-indent-basic 2)
(add-hook 'sh-mode-hook 'flycheck-mode)


(setq backup-directory-alist `(("." . "~/.saves")))

(setq-default indent-tabs-mode nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:foreground "color-251")))))
