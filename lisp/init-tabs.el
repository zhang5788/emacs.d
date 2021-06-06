(use-package awesome-tab
  :load-path "~/.emacs.d/lisp-site/awesome-tab"
  :config
  (awesome-tab-mode t)
  (setq awesome-tab-height 130)
  :bind (("C-c h" . awesome-tab-backward-tab)
	 ("C-c j" . awesome-tab-forward-group)
	 ("C-c l" . awesome-tab-forward-tab)))

(provide 'init-tabs)
