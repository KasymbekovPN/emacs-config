;;; kapani-settings --- Flycheck default setting
;;; Commentary:
;;; Default setting
;;; https://github.com/flycheck/flycheck

;;; Code:
(defun kapani--apply-default-flycheck-setting ()
  "It's appllying default flycheck setting."
  (use-package flycheck
    :ensure t
    :defer t
    :diminish
    :init (global-flycheck-mode)))

(kapani--apply-default-flycheck-setting)

(provide 'kapani--apply-default-flycheck-setting)
;;; kapani--apply-default-flycheck-setting.el ends here
