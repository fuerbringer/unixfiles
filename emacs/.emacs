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

; Evil mode package
(add-to-list 'load-path "~/.emacs.d/evil")
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

; Evil-Surround package
(add-to-list 'load-path "~/.emacs.d/evil-surround")
(require 'evil-surround)
(global-evil-surround-mode 1)

; Org-Mode package
(add-to-list 'load-path "~/.emacs.d/org-mode/lisp")
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

