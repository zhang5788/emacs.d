(use-package evil
  :defer t
  :ensure t
  :init
  (evil-mode 1))

;; 终端下，evil的插入显示为竖线
(use-package term-cursor
  :defer t
  :load-path "~/.emacs.d/extensions/term-cursor.el"
  :config
  (global-term-cursor-mode))

(use-package evil-leader
  :defer t
  :ensure t
  :init
  (global-evil-leader-mode t)
  :config
  (evil-leader/set-leader "<SPC>"))

(provide 'init-evil)
