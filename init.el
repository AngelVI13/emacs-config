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
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

;;; init.el ends here


