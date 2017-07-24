;; Base Emacs Configuration


;; Global Settings
(setq inhibit-startup-message t)
(setq ring-bell-function #'ignore)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(global-linum-mode t)

(setq vc-follow-symlinks t)

;; Split windows vertically 
;; https://stackoverflow.com/questions/2081577/setting-emacs-split-to-horizontal
;;(setq split-height-threshold nil)
;;(setq split-width-threshold 0)


;; Macros
(global-set-key (kbd "C-c ;") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c e") 'eval-buffer)
(global-set-key (kbd "C-<tab>") 'next-buffer)
(global-set-key (kbd "<backtab>") 'previous-buffer)


;; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/")) 
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    noctilux-theme
    exec-path-from-shell
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)


;; Package-Dependent Settings
(require 'better-defaults)
(load-theme 'noctilux t)
(exec-path-from-shell-copy-env "PATH")


;; Load Envs
(load "~/.emacs.d/configFiles/init_autosaves_backups.el")
(load "~/.emacs.d/configFiles/init_markdown.el")
(load "~/.emacs.d/configFiles/init_python.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(package-selected-packages
   (quote
    (noctilux-theme py-autopep8 material-theme flycheck exec-path-from-shell elpy ein better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
