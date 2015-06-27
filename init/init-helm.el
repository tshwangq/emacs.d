(require-package 'helm)
(require 'helm-config)

(setq helm-candidate-number-limit 100)
;; From https://gist.github.com/antifuchs/9238468
(setq helm-idle-delay 0.0 ; update fast sources immediately (doesn't).
      helm-input-idle-delay 0.01  ; this actually updates things
                                        ; reeeelatively quickly.
      helm-quick-update t
      ;; helm-M-x-requires-pattern nil
      helm-ff-skip-boring-files t
      helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match t)

(helm-mode 1)

(eval-after-load 'helm-mode
  (lambda ()
    (global-set-key (kbd "C-c h") 'helm-mini)
    (global-set-key (kbd "C-x b") 'helm-buffers-list)
    (global-set-key (kbd "C-x C-b") 'helm-buffers-list)))


(provide 'init-helm)