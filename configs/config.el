
(defconst kapani/scripts-path "configs/scripts" "Path to scripts directory.")
(defconst kapani/settings-path "configs/settings" "Path to settings directory.")
(defconst kapani/task-path "configs/tasks/default.el" "Path to configuration task.")

(add-to-list 'load-path (expand-file-name kapani/scripts-path user-emacs-directory))

(require 'elpaca-setup)

(defun kapani/load-user-file (path)
  "Loads file with relative path = PATH from user-emacs-directory"
  (interactive "f")
  (load-file (expand-file-name path user-emacs-directory)))

(defun kapani/load-setting (task)
  "Loads setting-file by task"
  (let ((file-name (concat (cdr task) ".el"))
        (directory-path (expand-file-name
                         (car task)
                         (expand-file-name kapani/settings-path  user-emacs-directory)))
        (path nil))
    (setq path (expand-file-name file-name directory-path))
    (kapani/load-user-file path)
    ))

(kapani/load-user-file kapani/task-path)

(dolist (elem kapani/config-task)
  (kapani/load-setting elem))

