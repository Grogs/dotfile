;;Packages
(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize))
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;;Mouse support (including scrolling)
(require  'mouse) 
    (xterm-mouse-mode t) 
    (defun track-mouse (e)) 
(defun up-slightly () (interactive) (scroll-up 1))
(defun down-slightly () (interactive) (scroll-down 1))
(global-set-key (kbd "<mouse-4>") 'down-slightly)
(global-set-key (kbd "<mouse-5>") 'up-slightly)

;;ido mode ftw
(require 'ido)
    (ido-mode t)

;;Turn off annoying noise.
(setq visible-bell 1)

;;Themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;Default theme
(load-theme 'molokai t)

(add-to-list 'load-path "~/.emacs.d")

;;Evil
(require 'evil)
(evil-mode 1)


(require 'powerline)
(powerline-center-evil-theme)

;;key bindings
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c a") 'org-agenda)

;;minimal interface
(menu-bar-mode -1)
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)




 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "9fd20670758db15cc4d0b4442a74543888d2e445646b25f2755c65dcd6f1504b" "29a4267a4ae1e8b06934fec2ee49472daebd45e1ee6a10d8ff747853f9a3e622" "a774c5551bc56d7a9c362dca4d73a374582caedb110c201a09b410c0ebbb5e70" "e26780280b5248eb9b2d02a237d9941956fc94972443b0f7aeec12b5c15db9f3" default)))
 '(org-agenda-files (quote ("~/scratch.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
