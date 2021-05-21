(global-set-key (kbd "C-c a") 'org-agenda)

(setq org-roam-directory "~/Documents/notes/org")

;;(global-set-key (kbd "C-c r n") 'org-roam-capture)
;;(global-set-key (kbd "C-c r f") 'org-roam-find-file)
;;(global-set-key (kbd "C-c r l") 'org-roam)
;;(global-set-key (kbd "C-c r i") 'org-roam-insert)

;;(require 'valign-mode)
(add-hook 'org-mode-hook #'valign-mode)
(add-hook 'org-mode-hook (lambda () (electric-indent-local-mode -1)))
(add-hook 'org-mode-hook (lambda () (global-visual-line-mode t)))

;;config org-downlaod 
(require 'org-download)
(add-hook 'dired-mode-hook 'org-download-enable)
(setq org-download-screenshot-method "screencapture -i %s")

;; 开启<s 快捷键
(require 'org-tempo)

(provide 'init-org)
