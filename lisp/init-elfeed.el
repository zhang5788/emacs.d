(use-package elfeed
  :ensure t)

(use-package elfeed-org
  :ensure t
  :init (elfeed-org)
  :config (setq rmh-elfeed-org-files (list "~/Documents/notes/rss/rss.org")))


(provide 'init-elfeed)
