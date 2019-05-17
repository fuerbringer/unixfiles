(require 'use-package-ensure)
(setq use-package-always-ensure t)

(use-package auto-compile
  :config (auto-compile-on-load-mode))

(setq load-prefer-newer t)

(global-linum-mode t)

(setq x-meta-keysym 'super x-super-keysym 'meta)
