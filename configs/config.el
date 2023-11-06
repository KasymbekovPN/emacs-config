
(defconst kapani/scripts-path "configs/scripts" "Path to scripts directory.")
(defconst kapani/settings-path "configs/settings" "Path to settings directory.")
(defconst kapani/task-path "configs/tasks/default.el" "Path to configuration task.")

(add-to-list 'load-path (expand-file-name kapani/scripts-path user-emacs-directory))

(require 'elpaca-setup)

;(defun kapani/load-config-file (file)
;  (interactive "f")
;  (load-file (expand-file-name )))

(defun load-user-file (file)
  (interactive "f")
  (load-file (expand-file-name file user-emacs-directory)))


(load-user-file kapani/task-path)

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

