;;; kapani-settings --- Yasnippet default setting
;;; Commentary:
;;; https://github.com/joaotavora/yasnippet

;;; Code:

(defun kapani--apply-default-yasnippet-setting ()
  "It's appllying default yasnippet setting."
  (use-package yasnippet
    :config (yas-global-mode)))

(kapani--apply-default-yasnippet-setting)

(provide 'kapani--apply-default-yasnippet-setting)
;;; kapani--apply-default-yasnippet-setting.el ends here
