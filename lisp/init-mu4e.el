
(use-package mu4e
  :defer t
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

(use-package org-mime
  :defer t
  :ensure t
  :config
  (setq org-mime-library 'mml))

(provide 'init-mu4e)
