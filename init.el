;;; 设置melpa源为清华的源
(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
		      ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))))


(add-to-list 'load-path "~/.emacs.d/lisp/")

(setq package-check-signature nil)

(require 'package)
(unless (bound-and-true-p package--initialized)
  (package-initialize))

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
(package-install 'user-package))

(require 'init-ui)
(require 'init-company)
(require 'init-ivy)
(require 'init-macos)
(require 'init-elfeed)
(require 'init-org)
(require 'init-mu4e)
(require 'init-agenda)
;;(require 'init-project)
(require 'init-tabs)
;;(require 'init-clojure)
(require 'init-rust)
(require 'init-modeline)
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(load-file custom-file)
