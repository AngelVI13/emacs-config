;;; package --- sumary:

;;; Commentary:
;; Main file that loads packages.
;; The personal configuration file is found in .emacs.d folder -> myinit.org

;;; Code:

;; UI tweaks
(setq inhibit-startup-message t) ;;disable startup-message
(tool-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "<f5>") 'revert-buffer)

;; Setting up package manager
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("org" . "https://orgmode.org/elpa/") t)
;; The package below may contain unstable versions of packages.
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)


;; Bootstrap `use-package'
;; Read about how to use "use-package" here https://github.com/jwiegley/use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

;;; init.el ends here


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-default-notes-file (concat org-directory "/notes.org"))
 '(org-directory "~/orgfiles")
 '(org-export-html-postamble nil)
 '(org-hide-leading-stars t)
 '(org-startup-folded (quote overview))
 '(org-startup-indented t)
 '(package-selected-packages
   (quote
    (smartparens emms google-translate-default-ui google-translate go-mode which-key web-mode virtualenv use-package undo-tree try tabbar org-plus-contrib org-gcal org-bullets org-ac noflet matlab-mode jedi iedit hydra hungry-delete ggtags flycheck expand-region eval-in-repl ess elpy dumb-jump counsel-projectile color-theme better-shell beacon aggressive-indent 2048-game))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 2.0)))))
