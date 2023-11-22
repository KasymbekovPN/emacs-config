;;; kapani-settings --- Lsp default setting
;;; Commentary:
;;; https://emacs-lsp.github.io/lsp-mode/
;;; https://github.com/emacs-lsp/lsp-ui
;;; https://emacs-lsp.github.io/lsp-java/
;;; https://github.com/emacs-lsp/lsp-java
;;; https://github.com/emacs-lsp/lsp-ivy
;;; https://github.com/emacs-lsp/lsp-treemacs

;;; Code:

(defun kapani--apply-default-lsp-setting ()
  "It's applying default lsp setting."

  (use-package lsp-mode
    :hook ((lsp-mode . lsp-enable-which-key-integration)))

  (use-package lsp-ui)

  (use-package lsp-java
    :config
    (add-hook 'java-mode-hook 'lsp))

  (use-package lsp-ivy)

  (use-package lsp-treemacs))

(kapani--apply-default-lsp-setting)

(provide 'kapani--apply-default-lsp-setting)
;;; kapani--apply-default-lsp-setting.el ends here
