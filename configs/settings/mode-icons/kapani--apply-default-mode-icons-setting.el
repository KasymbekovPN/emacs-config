;;; kapani-settings --- Mode-icons default setting
;;; Commentary:
;;; Status bar's icons

;;; Code:

(defun kapani--apply-default-mode-icons-setting ()
  "It's appllying default mode-icons setting."
  (use-package
    mode-icons
    :config (mode-icons-mode 1)))

(kapani--apply-default-mode-icons-setting)

(provide 'kapani--apply-default-mode-icons-setting)
;;; kapani--apply-default-mode-icons-setting.el ends here
