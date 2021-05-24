(use-package awesome-tab
  :load-path "~/.emacs.d/elpa/awesome-tab"
  :config
  (awesome-tab-mode t)
  :bind (("C-c h" . awesome-tab-backward-tab)
	 ("C-c j" . awesome-tab-forward-group)
	 ("C-c l" . awesome-tab-forward-tab)))

(provide 'init-tabs)
