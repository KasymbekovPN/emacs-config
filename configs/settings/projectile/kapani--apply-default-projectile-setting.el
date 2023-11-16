;;; kapani-settings --- Projectile default setting
;;; Commentary:
;;;  setting
;;; https://github.com/bbatsov/projectile
;;; https://docs.projectile.mx/projectile/index.html

;;; Code:

(defun kapani--apply-default-projectile-setting ()
  "It's appllying default projectile setting."
  (use-package projectile
    :ensure t
    :pin melpa-stable
    :config
    (define-key projectile-mode-map (kbd "<f1>") 'projectile-command-map)
    (projectile-mode +1)))

(kapani--apply-default-projectile-setting)

(provide 'kapani--apply-default-projectile-setting)
;;; kapani--apply-default-projectile-setting.el ends here
