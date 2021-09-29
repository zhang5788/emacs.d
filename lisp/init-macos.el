(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'none)


(setq ns-use-native-fuulscreen nil)

(setq mac-redisplay-dont-reset-vscroll t)

(setq mac-mouse-wheel-smooth-scroll nil)

(setq locate-command "mdfind")

(setq ns-pop-up-frames nil)

(and (or (daemonp)
	 (display-graphic-p))
     (require 'ns-auto-titlebar nil t)
     (ns-auto-titlebar-mode +1))

(provide 'init-macos)
