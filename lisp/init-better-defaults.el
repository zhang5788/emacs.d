(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("8ms" "Microsoft")
					    ))

(setq ring-bell-function 'ignore)

;;禁止生成备份文件
(setq make-backup-files nil)
(setq auto-save-default nil)

(global-set-key (kbd "<f2>") 'open-my-init-file)

(defun zhang-prev-window()
  (interactive)
  (other-window -1))

(global-set-key (kbd "C-x p") 'zhang-prev-window)

(windmove-default-keybindings)
(setq windmove-wrap-around t)

(setq url-proxy-services
      '(("no_proxy" . "^\\(localhost\\|10.*\\)")
        ("http" . "127.0.0.1:7890")        ;; notice without protocol, do NOT add protocol
        ("https" . "127.0.0.1:7890")))
(define-prefix-command 'ctrl-c-map)
(global-set-key (kbd "C-c") 'ctrl-c-map)


(provide 'init-better-defaults)
