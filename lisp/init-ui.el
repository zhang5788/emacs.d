;;关闭工具栏
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
;; 全局行号
(global-linum-mode t)

(global-hl-line-mode t)
;;高亮括号显示
(setq inhibit-splash-screen t)

;;设置焦点光标为竖线
(setq-default cursor-type 'bar)

;;(setq redisplay-dont-pause nil)

(provide 'init-ui)
