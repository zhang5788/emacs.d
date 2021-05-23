(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'none)

(provide 'init-macos)
