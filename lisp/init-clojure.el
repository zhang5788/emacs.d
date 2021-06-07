(use-package clojure-mode
  :ensure t)

(use-package lsp-mode
  :ensure t)

(use-package cider
  :ensure t)

(use-package lsp-treemacs
  :ensure t)

(use-package flycheck
  :ensure t)

(use-package lsp-ui
  :ensure t)

(add-hook 'clojure-mode-hook 'lsp)
(add-hook 'clojurescript-mode-hook 'lsp)
(add-hook 'clojurec-mode-hook 'lsp)

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      treemacs-space-between-root-nodes nil
      company-minimum-prefix-length 1
      lsp-lens-enable t
      lsp-signature-auto-activate nil)

(setq lsp-clojure-custom-server-command '("bash" "-c" "/opt/homebrew/Cellar/clojure-lsp-native/2021.05.22-16.50.45/bin/clojure-lsp"))

(provide 'init-clojure)
