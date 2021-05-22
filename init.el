;; 设置melpa源为清华的源
(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
		      ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))))


;;(add-to-list 'load-path "~/.emacs.d/lisp/")

(setq package-check-signature nil)
(require 'package)
(unless (bound-and-true-p package--initialized)
  (package-initialize))

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'user-package))


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

(use-package company
  :ensure t
  :config
  (global-company-mode t))

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

(use-package ivy
  :ensure t
  :diminish (ivy-mode . "")
  :hook ((after-init . ivy-mode)
	 (ivy-mode . counsel-mode))
  :init
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t))

(use-package counsel
  :ensure t
  :bind (("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)))

(use-package swiper
  :ensure t
  :diminish ivy-mode counsel-mode
  :bind (("C-s" . swiper-isearch)
	 ("C-r" . swiper-isearch-backward)))

(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

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

(use-package elfeed
  :ensure t)

(use-package elfeed-org
  :ensure t
  :init (elfeed-org)
  :config (setq rmh-elfeed-org-files (list "~/Documents/notes/rss/rss.org")))


(use-package org
  :ensure nil
  :bind (("C-c a" . org-agenda)
	 ("C-c l" . org-store-link)
	 ("C-c c" . org-capture))
  :init
  (add-hook 'org-mode-hook (lambda () (electric-indent-local-mode -1))
	    (add-hook 'org-mode-hook (lambda () (global-visual-line-mode t)))
	    (require 'org-tempo)))


(use-package valign
  :ensure t
  :hook (valign-mode . org-mode-hook))

(use-package org-download
  :ensure t
  :init (setq org-download-screenshot-method "screencapture -i %s")
  (add-hook 'dired-mode-hook 'org-download-enable))

(use-package mu4e
  :load-path "/opt/homebrew/Cellar/mu/1.4.15/share/emacs/site-lisp/mu/mu4e"
  :init
  (setq mail-user-agent 'mu4e-user-agent)
  (setq mu4e-maildir "~/.mail")
  (setq mu4e-get-mail-command "offlineimap -u quiet")
  (setq mu4e-update-interval 60)
  (setq mu4e-sent-folder   "/INBOX.Sent Messages")
  (setq mu4e-drafts-folder "/INBOX.Drafts")
  (setq mu4e-trash-folder  "/INBOX.Trash")
  (setq mu4e-refile-folder  "/INBOX.Spam")
  (setq mu4e-view-show-images t)
  (setq user-full-name "zhangt")
  (setq user-mail-address "zhangt@jhsec.com"))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(load-file custom-file)
