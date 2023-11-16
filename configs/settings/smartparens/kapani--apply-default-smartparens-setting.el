;;; kapani-settings --- Smartparens default setting
;;; Commentary:
;;; Smartparens setting

;;; Code:

(defun kapani--apply-default-smartparens-setting ()
  "It's appllying default smartparens setting."
  (use-package
    smartparens
    :config (smartparens-global-mode 1)))

(kapani--apply-default-smartparens-setting)

(provide 'kapani--apply-default-smartparens-setting)
;;; kapani--apply-default-smartparens-setting.el ends here
