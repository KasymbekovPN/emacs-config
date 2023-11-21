;;; kapani-settings --- Which key default setting
;;; Commentary:
;;; https://github.com/justbur/emacs-which-key

;;; Code:

(defun kapani--apply-default-which-key-setting ()
  "It's appllying default which key setting."
  (use-package which-key
    :config (which-key-mode)))

(kapani--apply-default-which-key-setting)

(provide 'kapani--apply-default-which-key-setting)
;;; kapani--apply-default-which-key-setting.el ends here
