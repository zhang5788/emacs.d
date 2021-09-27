(use-package ivy
  :defer t
  :ensure t
  :diminish (ivy-mode . "")
  :hook ((after-init . ivy-mode)
	 (ivy-mode . counsel-mode))
  :init
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t))

(use-package counsel
  :defer t
  :ensure t
  :bind (("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)))

(use-package swiper
  :defer t
  :ensure t
  :diminish ivy-mode counsel-mode
  :bind (("C-s" . swiper-isearch)
	 ("C-r" . swiper-isearch-backward)))

(provide 'init-ivy)
