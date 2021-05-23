(setq org-capture-templates nil)
(add-to-list 'org-capture-templates
	       '("r" "Book Reading Task" entry
		 (file+olp "~/Documents/notes/agenda/index.org" "Reading" "Book")
		 "* TODO %^{书名}\n%u\n%a\n" :clock-in t :clock-resume t))

(provide 'init-agenda)
