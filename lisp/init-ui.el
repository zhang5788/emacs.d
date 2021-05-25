;; 设置界面
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;;优化
(setq ring-bell-function 'ignore)

;;禁止生成备份文件
(setq make-backup-files nil)
(setq auto-save-default nil)


(setq url-proxy-services
      '(("no_proxy" . "^\\(localhost\\|10.*\\)")
        ("http" . "127.0.0.1:7890")   
        ("https" . "127.0.0.1:7890")))

(global-hl-line-mode t)

;;禁止欢迎页面
(setq inhibit-splash-screen t)

;; 设置光标为bar
(setq-default cursor-type 'bar)

(use-package hungry-delete
  :ensure t
  :config
  (global-hungry-delete-mode))

(use-package popwin
  :ensure t
  :config
  (popwin-mode t))

(use-package smartparens
  :ensure t
  :init
  (require 'smartparens-config)
  (add-hook 'emacs-lisp-mode-hook #'smartparens-mode))

(use-package recentf
  :ensure nil
  :config
  (progn
    (setq recentf-max-saved-items 200
          recentf-max-menu-items 15)
    (recentf-mode)
    )
  :bind ("C-c r" . 'recentf-open-files))

(use-package monokai-theme
  :ensure t)

(use-package gruvbox-theme
  :ensure t
  :init
  (load-theme 'gruvbox-dark-hard t))

(use-package linum
  :init
  (progn
    (global-linum-mode t)
    (setq linum-format "%2d  ")
      (set-face-background 'linum nil)
    ))

(use-package sis
  :ensure t
  :config
  (progn
    (sis-global-cursor-color-mode t)
    (sis-global-respect-mode t)
    (sis-global-context-mode t)
    (sis-global-inline-mode t)
    (sis-ism-lazyman-config
     "com.apple.keylayout.ABC"
     "com.apple.inputmethod.SCIM.ITABC")))


(provide 'init-ui)
