(require 'package)

(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setq package-enable-at-startup nil)
(package-initialize nil)

(unless (package-installed-p 'use-package)
  (message "EMACS install use-package.el")
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory) user-emacs-directory)
        ((boundp 'user-init-directory) user-init-directory)
        (t "~/.emacs.d/")))

(defun load-user-file (file)
  (interactive "f")
  (load-file (expand-file-name file user-init-dir)))

; (package-refresh-contents)
(load-user-file "personal.el")
(load-user-file "settings/rainbow-delimiters.el")
(load-user-file "settings/smartparens.el")
(load-user-file "settings/mode-icons.el")
(load-user-file "settings/indent-guide.el")
(load-user-file "settings/treemacs.el")
(load-user-file "settings/doom-themes.el")
(load-user-file "settings/projectile.el")
(load-user-file "settings/ivy.el")

;(use-package projectile)
;(use-package flycheck)
;(use-package yasnippet :config (yas-global-mode))
;(use-package lsp-mode :hook ((lsp-mode . lsp-enable-which-key-integration)))
;(use-package hydra)
;(use-package company)
;(use-package lsp-ui)
;(use-package which-key :config (which-key-mode))
;(use-package lsp-java :config (add-hook 'java-mode-hook 'lsp))
;(use-package dap-mode :after lsp-mode :config (dap-auto-configure-mode))
;(use-package dap-java :ensure nil)
;(use-package helm-lsp)
;(use-package helm
;  :config (helm-mode))
;(use-package lsp-treemacs)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(rainbow-delimiters zenburn-theme treemacs-tab-bar treemacs-projectile treemacs-persp treemacs-magit treemacs-icons-dired treemacs-evil lsp-ui lsp-java)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
