(require 'package)
(add-to-list 'package-archives
	           '("melpa" ."https://melpa.org/packages/") t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(package-initialize)

(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-12"))

(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(setq-default tab-stop-list (number-sequence 2 200 2))

(setq make-backup-files nil)
(setq audo-save-default nil)

(tool-bar-mode 0)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(global-linum-mode t)

(setq-default message-log-max nil)

(setq line-number-mode t)
(setq column-number-mode t)

(load-theme 'gruvbox-dark-soft t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("1d78d6d05d98ad5b95205670fe6022d15dabf8d131fe087752cc55df03d88595" default))
 '(package-selected-packages '(github-theme csharp-mode magit rust-mode gruvbox-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-face-attribute 'default t :font "DejaVu Sans Mono-12")

(setq inhibit-startup-screen t)
(setq inhibit-splash-screen t)

;; some functions
(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

;; binds key

(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)
