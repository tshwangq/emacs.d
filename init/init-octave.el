(autoload 'octave-mode "octave-mod" nil t)
(add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))
(add-hook 'octave-mode-hook (lambda ()
                              (setq inferior-octave-program "~/bin/octave")
                              (abbrev-mode 1)
                              (auto-fill-mode 1)
                              (if (eq window-system 'x) (font-lock-mode 1))
                              ))
