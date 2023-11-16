;;; kapani-settings --- Indent-guide default setting
;;; Commentary:
;;; Show indents for every mode

;;; Code:

(defun kapani--apply-default-indent-guide-setting ()
  "It's appllying default indent-guide setting."
  (use-package
    indent-guide
    :config (indent-guide-global-mode 1)))

(kapani--apply-default-indent-guide-setting)

(provide 'kapani--apply-default-indent-guide-setting)
;;; kapani--apply-default-indent-guide-setting.el ends here
