(use-package elfeed
  :defer t
  :ensure t)

(use-package elfeed-org
  :defer t
  :ensure t
  :init (elfeed-org)
  :config (setq rmh-elfeed-org-files (list "~/Documents/notes/rss/rss.org")))


(provide 'init-elfeed)
