;; Configure package.el to include MELPA.
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Ensure that use-package is installed.
;;
;; If use-package isn't already installed, it's extremely likely that this is a
;; fresh installation! So we'll want to update the package repository and
;; install use-package before loading the literate configuration.
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file "~/.emacs.d/configuration.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
	 ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(custom-safe-themes
	 (quote
		("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(hl-todo-keyword-faces
	 (quote
		(("TODO" . "#dc752f")
		 ("NEXT" . "#dc752f")
		 ("THEM" . "#2d9574")
		 ("PROG" . "#4f97d7")
		 ("OKAY" . "#4f97d7")
		 ("DONT" . "#f2241f")
		 ("FAIL" . "#f2241f")
		 ("DONE" . "#86dc2f")
		 ("NOTE" . "#b1951d")
		 ("KLUDGE" . "#b1951d")
		 ("HACK" . "#b1951d")
		 ("TEMP" . "#b1951d")
		 ("FIXME" . "#dc752f")
		 ("XXX+" . "#dc752f")
		 ("\\?\\?\\?+" . "#dc752f"))))
 '(package-selected-packages
	 (quote
		(evil-surround use-package switch-window ido-vertical-mode evil auto-compile auctex)))
 '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#292b2e"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
