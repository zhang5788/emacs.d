;; 初始化projectile插件。

(use-package projectile
  :ensure t
  :hook
  (after-init . projectile-mode)
  :init
  (setq projectile-mode-line-prefix ""
	projectile-sort-order 'recentf
	projectile-use-git-grep t
	projectile-auto-discover t)
  :bind
  (:map projectile-mode-map
	("C-c p" . projectile-command-map))
  :config
  (remove-hook 'find-file-hook #'projectile-find-file-hook-function))

(provide 'init-project)
