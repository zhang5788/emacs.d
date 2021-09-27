(use-package org
  :defer t
  :ensure nil
  :bind (("C-c a" . org-agenda)
	 ("C-c l" . org-store-link)
	 ("C-c c" . org-capture))
  :init
  (add-hook 'org-mode-hook (lambda () (electric-indent-local-mode -1))
	    (require 'org-tempo)))

(use-package org-bullets
  :defer t
  :ensure t
  :init
  (add-hook 'org-mode-hook #'org-bullets-mode)
  (setq inhibit-compacting-font-caches t))

(use-package valign
  :defer t
  :ensure t
  :hook (valign-mode . org-mode-hook))

(use-package org-download
  :defer t
  :ensure t
  :config (setq org-download-screenshot-method "screencapture -i %s")
  (add-hook 'dired-mode-hook 'org-download-enable))

(use-package org-roam
  :defer t
  :ensure t
  :hook
  (org-mode-hook . org-roam-mode)
  :custom
  (org-roam-directory (file-truename "~/Documents/notes/org/"))
  :bind
  (("C-c n f" . org-roam-find-file)
   :map org-roam-mode-map
	(("C-c n l" . org-roam)
	 ("C-c n f" . org-roam-find-file)
	 ("C-c n g" . org-roam-graph))
	:map org-mode-map
	(("C-c n i" . org-roam-insert))
	(("C-c n I" . org-roam-insert-immediate))))

(provide 'init-org)
