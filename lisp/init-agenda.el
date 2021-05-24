(setq org-capture-templates nil)
(add-to-list 'org-capture-templates
	       '("w" "Work Task" entry
		 (file+olp "~/Documents/notes/agenda/task.org" "Work")
		 "* TODO %^{任务}\n%t\n%^g" :clock-in t :clock-resume t))

(setq org-agenda-custom-commands
        '(("w" "List work todo"
           ((tags "+work")))
          ))
(provide 'init-agenda)
