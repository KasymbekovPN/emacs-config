;;; kapani-settings --- Dap default setting
;;; Commentary:
;;; https://github.com/emacs-lsp/dap-mode

;;; Code:

(defun kapani--apply-default-dap-setting ()
  "It's appllying default dap setting."

  (use-package dap-mode
    :after lsp-mode
    :config
    (dap-auto-configure-mode)))

(kapani--apply-default-dap-setting)

(provide 'kapani--apply-default-dap-setting)
;;; kapani--apply-default-dap-setting.el ends here
