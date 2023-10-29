;;; Commentary:
;;;  setting
;;; https://github.com/bbatsov/projectile
;;; https://docs.projectile.mx/projectile/index.html

;;; Code:

(use-package projectile
  :ensure t
  :pin melpa-stable
  :config
  (define-key projectile-mode-map (kbd "<f1>") 'projectile-command-map)
  (projectile-mode +1))

;;; projectile.el ends here
