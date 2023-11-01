(add-to-list 'load-path (expand-file-name "configs/scripts" user-emacs-directory))

(require 'elpaca-setup)

(defun load-user-file (file)
  (interactive "f")
  (load-file (expand-file-name file user-emacs-directory)))

;; !!! load paths from folder tasks !!!
(load-user-file "configs/settings/personal/default.el")
(load-user-file "configs/settings/rainbow-delimiters/default.el")
(load-user-file "configs/settings/smartparens/default.el")
(load-user-file "configs/settings/mode-icons/default.el")
(load-user-file "configs/settings/indent-guide/default.el")
(load-user-file "configs/settings/treemacs/default.el")
(load-user-file "configs/settings/doom-themes/default.el")
(load-user-file "configs/settings/projectile/default.el")
(load-user-file "configs/settings/ivy/default.el")

