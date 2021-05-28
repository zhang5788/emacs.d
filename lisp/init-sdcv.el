(use-package posframe
  :ensure t)
(use-package sdcv
  :load-path "~/.emacs.d/lisp-site/sdcv/"
  :config
  (setq sdcv-say-word-p t)
  (setq sdcv-dictionary-data-dir "~/.stardict/dic")
  (setq sdcv-dictionary-simple-list    ;setup dictionary list for simple search
	      '("懒虫简明英汉词典"))
  (setq sdcv-dictionary-complete-list     ;setup dictionary list for complete search
      '("懒虫简明英汉词典")))

(provide 'init-sdcv)
