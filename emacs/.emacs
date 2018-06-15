;Swap super and meta
(setq  x-meta-keysym 'super
       x-super-keysym 'meta)

; No borders and bars
(tool-bar-mode 0)
(menu-bar-mode 0)
(when window-system
  (scroll-bar-mode -1))

; Disable bells and such
(when (fboundp 'blink-cursor-mode)
  (blink-cursor-mode -1))
(setq ring-bell-function 'ignore)

; Org evaluation languages
(org-babel-do-load-languages
  'org-babel-load-languages
  '((calc . t)))

; Set up package manager
(require 'package)
(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
		  ("elpa" . "http://tromey.com/elpa/")
		  ("melpa" . "http://melpa.milkbox.net/packages/")))
  (add-to-list 'package-archives source t))
(package-initialize)

; Install packages
(when (not package-archive-contents)
  (package-refresh-contents))
(defvar severin/packages
  '(evil evil-surround org linum-relative))
(dolist (p severin/packages)
  (when (not (package-installed-p p))
    (package-install p)))

; Use package evil
(require 'evil)
(setq evil-want-C-u-scroll t)
(evil-mode 1)

; Use package evil-surround
(require 'evil-surround)
(global-evil-surround-mode 1)

; Use package org-mode
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

; Use package linum-relative
(require 'linum-relative)
(linum-relative-global-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
