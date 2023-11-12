;;; kapani-settings --- Doom themes default setting
;;; Commentary:
;;; doom-themes settings
;;; https://github.com/doomemacs/themes

;;; Code:
(defun kapani--apply-default-doom-themes-setting ()
  "It's appllying default doom themes setting."
  (use-package doom-themes
    :ensure t
    :config
    (setq doom-themes-enable-bold t     ; If nil, bold is universally disabled
          doom-themes-enable-italic t)  ; If nil, itatic is universally disabled
                                        ;  (load-theme 'doom-dracula t)
                                        ;  (load-theme 'doom-monokai-classic t)
    (load-theme 'doom-zenburn t)
    (doom-themes-visual-bell-config)    ; Enable flashing mode-line on errors
    (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
    (doom-themes-org-config))
  )


(kapani--apply-default-doom-themes-setting)

(provide 'kapani--apply-default-doom-themes-setting)
;;; kapani--apply-default-doom-themes-setting.el ends here

