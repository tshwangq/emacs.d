;; TODO see if there's a better way
(when *linux-p*
  ;; (add-to-list 'default-frame-alist '(font . "-unknown-Inconsolata-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1" ))
  (add-to-list 'default-frame-alist '(font . "-*-Source Code Pro-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1" )))

(when *mac-p*
  ;; (add-to-list 'default-frame-alist '(font . "-apple-Inconsolata-medium-normal-normal-*-14-*-*-*-m-0-iso10646-1" ))
  (add-to-list 'default-frame-alist '(font . "-*-Source Code Pro-regular-r-normal-*-14-*-*-*-m-0-iso10646-1" )))

(when *windows-p*
  (add-to-list 'default-frame-alist '(font . "-unknown-Inconsolata-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1" )))



(when (< emacs-major-version 24)
  (use-package color-theme))

(use-package planet-theme
  :ensure t
  :config
  (when (and window-system (>= emacs-major-version 24))
    (load-theme 'planet t)))

(provide 'init-appearence)
