(setq org-capture-templates nil)
(add-to-list 'org-capture-templates
	       '("w" "Work Task" entry
		 (file+olp "~/Documents/notes/agenda/task.org" "Work")
		 "* TODO %^{任务}\n%t\n%^g" :clock-in t :clock-resume t))

(add-to-list 'org-capture-templates
	       '("l" "Learning Task" entry
		 (file+olp "~/Documents/notes/agenda/task.org" "Learn")
		 "* TODO %^{任务}\n%t\n%^g" ))

(add-to-list 'org-capture-templates
	       '("e" "Emacs Task" entry
		 (file+olp "~/Documents/notes/agenda/task.org" "Emacs")
		 "* TODO %^{任务}\n%t\n%^g"))

(setq org-agenda-custom-commands
        '(("w" "List work todo"
           ((tags "+work")))
          ))
(provide 'init-agenda)
