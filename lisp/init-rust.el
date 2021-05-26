(use-package lsp-mode
  :ensure t
  :commands lsp
  :custom
  (lsp-rust-analyzer-cargo-watch-command "clippy")
  (lsp-eldoc-render-all t)
  (lsp-idle-delay 0.6)
  (lsp-rust-analyzer-server-display-inlay-hints t)

  :config
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))


(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :custom
  (lsp-ui-peek-always-show t)
  (lsp-ui-sideline-show-hover t)
  (lsp-ui-doc-enable nil))

(use-package flycheck
  :ensure t)

(use-package rustic
  :ensure t
  :bind (:map rustic-mode-map
	      ("M-j" . lsp-ui-imenu)
	      ("M-?" . lsp-find-references)
	      ("C-c C-c l" . flycheck-list-errors)
	      ("C-c C-c a" . lsp-execute-code-action)
	      ("C-c C-c r" . lsp-rename)
	      ("C-c C-c q" . lsp-workspace-restart)
	      ("C-c C-c Q" . lsp-workspace-shutdown)
	      ("C-c C-c s" . lsp-rust-analyzer-status))


  :config
  (setq rustic-format-on-save t)
  (add-hook 'rustic-mode-hook 'rk/rustic-mode-hook))

(defun rk/rustic-mode-hook ()
  (setq-local buffer-save-without-query t))

(defun my-cargo-run ()
  "Build and run Rust code."
  (interactive)
  (rustic-cargo-run)
  (let (
      (orig-win (selected-window))
      (run-win (display-buffer (get-buffer "*rustic-compilation*") nil 'visible))
    )
    (select-window run-win)
    (comint-mode)
    (read-only-mode 0)
  )
)
(provide 'init-rust)
