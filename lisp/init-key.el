;;; file key

(evil-leader/set-key
  "ff" 'find-file)


(evil-leader/set-key
  "pf" 'projectile-find-file
  "pg" 'projectile-ripgrep
  "pp" 'project-switch-project)

(provide 'init-key)
