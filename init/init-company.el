(use-package company
  :ensure t
  :commands company-mode
  :hook ((prog-mode . company-mode))
  :bind (("C-c C-y" . company-yasnippet)
         :map company-active-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous)))

(use-package company-lsp
  :ensure t
  :after (company lsp-mode)
  :config
  (add-to-list 'company-backends 'company-lsp)
  :custom
  (company-lsp-async t)
  (company-lsp-enable-snippet t))

(provide 'init-company)
