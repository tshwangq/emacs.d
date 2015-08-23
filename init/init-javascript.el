(use-package json-mode
  :defer t
  :ensure t)

(use-package js2-mode
  :ensure t
  :defer t
  :mode "\\.js$"
  :config
  (use-package js2-refactor
    :ensure t
    :commands js2-refactor-mode
    :config
    (js2r-add-keybindings-with-prefix "C-c C-r"))

  (electric-indent-mode -1)
  (setq js2-basic-offset 2)
  (setq js2-bounce-indent-p t)
  (setq js2-consistent-level-indent-inner-bracket-p t)
  (setq js2-pretty-multiline-decl-indentation-p t)
  (add-hook 'js2-mode-hook #'js2-refactor-mode))

(use-package coffee-mode
  :ensure t
  :defer t
  :mode "\\.em$"
  :config
  (progn
    (setq tab-width 2)
    (setq coffee-tab-width 2)
    (setq indent-tabs-mode t)
    (add-hook 'before-save-hook
              (lambda ()
                ;; This is a sad hack. coffee-mode indents strictly
                ;; by spaces and I don't have time to patch.
                ;; I need tabs for work standards.
                (tabify-buffer))
              nil t)
    ))

(provide 'init-javascript)
