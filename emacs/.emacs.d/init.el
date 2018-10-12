
;;; General editor

;Swap super and meta
(setq x-meta-keysym 'super
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

(setq
   backup-by-copying t
   backup-directory-alist '(("." . "~/.emacs-saves/"))
   delete-old-versions t
   kept-new-versions 5
   kept-old-versions 1
   version-control t)


;;; Package related

; Set up package manager
(require 'package)
(dolist (source '(("gnu" . "https://elpa.gnu.org/packages/")
                  ("melpa" . "https://melpa.org/packages/")))
  (add-to-list 'package-archives source t))
(package-initialize)

; Install packages
(when (not package-archive-contents)
  (package-refresh-contents))
(defvar severin/packages
  '(evil evil-surround evil-org org linum-relative haskell-mode smart-tabs-mode markdown-mode nix-mode))
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

; Use package evil-org
(require 'evil-org)

; Use package org-mode
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-src-fontify-natively t)

; Org evaluation languages
(org-babel-do-load-languages
  'org-babel-load-languages
  '((calc . t)))

; Use package haskell-mode
(require 'haskell-mode)

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

; Use package linum-relative
(require 'linum-relative)
(linum-relative-global-mode)


; Use package smart-tabs-mode
(setq indent-tabs-mode t)


;;; Custom variables and ones set through `customize-*`
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (leuven)))
 '(org-agenda-files (quote ("~/org")))
 '(package-selected-packages (quote (evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#FFFFFF" :foreground "#333333" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "CTDB" :family "DejaVu Sans Mono")))))
