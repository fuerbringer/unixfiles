(require 'package)
(dolist (source '(("gnu" . "https://elpa.gnu.org/packages/")
                  ("melpa" . "https://melpa.org/packages/")))
  (add-to-list 'package-archives source t))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (linum-relative evil-org evil-surround evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq evil-want-C-u-scroll t)
(setq x-meta-keysym 'super x-super-keysym 'meta) ;; Swap super and meta

(require 'evil)
(require 'evil-surround)
(require 'evil-org)
(require 'linum-relative)

(evil-mode 1)
(global-evil-surround-mode 1)
(linum-relative-global-mode)
(electric-pair-mode 1)
(tool-bar-mode 0)
