;;(rpackage-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")



(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))



(require 'init-better-defaults)
(require 'init-packages)
(require 'init-ui)
(require 'init-ivy)
(require 'init-org)
(require 'init-elfeed)
(require 'init-mu4e)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(load-file custom-file)


