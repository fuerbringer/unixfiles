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

(electric-pair-mode 1)

; Org evaluation languages
(org-babel-do-load-languages
  'org-babel-load-languages
  '((calc . t)))

; Set up package manager
(require 'package)
(dolist (source '(("melpa-stable" . "https://stable.melpa.org/packages/")))
  (add-to-list 'package-archives source t))
(package-initialize)

; Install packages
(when (not package-archive-contents)
  (package-refresh-contents))
(defvar severin/packages
  '(evil evil-surround org linum-relative color-theme-sanityinc-tomorrow smart-tabs-mode))
(dolist (p severin/packages)
  (when (not (package-installed-p p))
    (package-install p)))

; Use package evil
(setq evil-want-C-u-scroll t)
(require 'evil)
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

; Use package smart-tabs-mode
(setq indent-tabs-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-eighties)))
 '(custom-safe-themes
   (quote
    ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(org-agenda-files (quote ("~/org")))
 '(package-selected-packages (quote (evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2d2d2d" :foreground "#cccccc" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "CTDB" :family "Fira Code")))))
