;;; init.el --- Customisations
;;; Commentary:


(setq prelude-guru nil)

;;; Code:
(prelude-require-packages '(
    evil
    moe-theme
    monokai-theme
))


;;Mouse support (including scrolling)
(require  'mouse)
    (xterm-mouse-mode t)
    (defun track-mouse (e))
(defun up-slightly () "Scroll up." (interactive) (scroll-up 1))
(defun down-slightly () "Scroll down." (interactive) (scroll-down 1))
(global-set-key (kbd "<mouse-4>") 'down-slightly)
(global-set-key (kbd "<mouse-5>") 'up-slightly)

;;Evil
(require 'evil)
(evil-mode 1)

;;minimal interface
(menu-bar-mode -1)
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

(load-theme 'monokai t)

(provide 'init)
;;; init.el ends here
