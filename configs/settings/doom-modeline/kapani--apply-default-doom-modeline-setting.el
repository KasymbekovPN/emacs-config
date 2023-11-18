;;; kapani-settings --- Doom-modeline default setting
;;; Commentary:
;;; https://github.com/seagle0128/doom-modeline

;;; Code:

(defun kapani--apply-default-doom-modeline-setting ()
  "It's appllying default ivy setting."
  (use-package doom-modeline
    :ensure t
    :init (doom-modeline-mode 1)
    :config
    (setq doom-modeline-height 35
          doom-modeline-bar-width 5
          doom-modeline-persp-name t
          doom-modeline-persp-icon t)))

(provide 'kapani--apply-default-doom-modeline-setting)
;;; kapani--apply-default-doom-modeline-setting.el ends here
