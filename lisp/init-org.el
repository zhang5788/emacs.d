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

(provide 'init-org)
