(use-package evil
  :defer t
  :ensure t
  :init
  (evil-mode 1))


(use-package term-cursor
  :defer t
  :load-path "~/.emacs.d/extensions/term-cursor.el"
  :config
  (global-term-cursor-mode t))

(provide 'init-evil)
