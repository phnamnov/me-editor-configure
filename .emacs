(setq default-directory "~/")

(require 'package)
(add-to-list 'package-archives
	           '("melpa" ."https://melpa.org/packages/") t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(package-initialize)

(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-12"))

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq-default indent-line-function (quote insert-tab))
(setq-default tab-stop-list (number-sequence 2 200 2))

(setq make-backup-files nil)
(setq audo-save-default nil)

(tool-bar-mode 0)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(setq-default message-log-max nil)
(kill-buffer "*Messages*")

(setq line-number-mode t)
(setq column-number-mode t)

(load-theme 'gruvbox-dark-soft t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(rust-mode gruvbox-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-face-attribute 'default t :font "DejaVu Sans Mono-12")
