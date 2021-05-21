(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
		      ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

 ;; cl - Common Lisp Extension
 (require 'cl)

 ;; Add Packages
 (defvar my/packages '(
		;; --- Auto-completion ---
		company
		;; --- Better Editor ---
		hungry-delete
		swiper
		counsel
		sis
		;;smex
		smartparens
		;; --- Major Mode ---
		;;js2-mode
		;; --- Minor Mode ---
		;;nodejs-repl
		exec-path-from-shell
		;; --- Themes ---
		monokai-theme
		gruvbox-theme
		popwin
		org-roam
		org-download
		valign
		elfeed
		elfeed-org
		elfeed-dashboard
		use-package
		which-key
		meow
		;; solarized-theme
		) "Default packages")

 (setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

 ;; Find Executable Path on OS X
 (when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))


(global-company-mode t)

(load-theme 'monokai t)

;;(load-theme 'gruvbox-dark-soft t)
(require 'hungry-delete)
(global-hungry-delete-mode)

;;(require 'recentf-mode)
(recentf-mode 1)
(setq recentf-max-menu-items 10)
(global-set-key (kbd "C-c r") 'recentf-open-files)


(require 'smartparens-config)
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)

(require 'popwin)
(popwin-mode t)

(require 'which-key)
(which-key-mode)

(require 'sis)
(sis-global-cursor-color-mode t)
(sis-global-respect-mode t)
(sis-global-context-mode t)
(sis-global-inline-mode t)
(sis-ism-lazyman-config
 "com.apple.keylayout.ABC"
 "com.apple.inputmethod.SCIM.ITABC")


(provide 'init-packages)
