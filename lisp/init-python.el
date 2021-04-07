;; only spaces
(add-hook 'python-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq python-indent 4)
            (setq tab-width 4))
          (untabify (point-min)
                    (point-max)))

(add-hook 'python-mode-hook
          (lambda ()
            (require 'sphinx-doc)
            (sphinx-doc-mode t)))

(setq py-autopep8-options '("--max-line-length=79"))

(require 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(provide 'init-python)
;;; init-python.el ends here
