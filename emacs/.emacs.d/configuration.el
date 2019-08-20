(require 'use-package-ensure)
(setq use-package-always-ensure t)

(use-package auto-compile
  :config (auto-compile-on-load-mode))
(setq load-prefer-newer t)

(use-package evil
	      :ensure t
	      :defer nil
	      :init
	      (setq evil-want-keybinding nil)
	      (setq evil-want-C-u-scroll t)
	      :config
	      (evil-mode 1))
(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

(dolist (mode '(dired-mode)) 
  (add-to-list 'evil-emacs-state-modes mode))

(use-package switch-window
      :ensure t
      :defer t
      :config
      (setq switch-window-input-style 'minibuffer)
      (setq switch-window-increase 4)
      (setq switch-window-threshold 2)
      (setq switch-window-shortcut-style 'qwerty)
      (setq switch-window-qwerty-shortcuts
		'("a" "s" "d" "f" "j" "k" "l"))
      :bind
      ([remap other-window] . switch-window))

(setq ido-enable-flex-matching nil)
(setq ido-create-new-buffer 'always)
(setq ido-everywhere t)
(ido-mode 1)

(use-package ido-vertical-mode
      :ensure t
      :init
      (ido-vertical-mode 1))
(setq ido-vertical-define-keys 'C-n-and-C-p-only)



(use-package zenburn-theme :ensure t)
      (setq zenburn-scale-org-headlines t)
      (setq zenburn-scale-outline-headlines t)
      (setq zenburn-use-variable-pitch t)

(global-linum-mode t)

(show-paren-mode 1)

(setq-default tab-width 2)
(setq-default standard-indent 2)
(setq c-basic-offset tab-width)
(setq-default electric-indent-inhibit t)
(setq-default indent-tabs-mode t)
(setq backward-delete-char-untabify-method 'nil)

(setq electric-pair-pairs '(
						       (?\{ . ?\})
						       (?\( . ?\))
						       (?\[ . ?\])
						       (?\" . ?\")
						      ))
(electric-pair-mode t)

(defun split-and-follow-horizontally ()
      (interactive)
      (split-window-below)
      (balance-windows)
      (other-window 1))
(global-set-key (kbd "C-x 2") 'split-and-follow-horizontally)

(defun split-and-follow-vertically ()
      (interactive)
      (split-window-right)
      (balance-windows)
      (other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)

(defalias 'yes-or-no-p 'y-or-n-p)

(org-babel-do-load-languages 'org-babel-load-languages '((shell . t)))
