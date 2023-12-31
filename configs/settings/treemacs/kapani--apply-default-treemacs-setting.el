;;; kapani-settings --- Treemacs default setting
;;; Commentary:
;;; treemacs settings
;;; https://github.com/Alexander-Miller/treemacs

;;; Code:

(defun kapani--apply-default-treemacs-setting ()
  "It's appllying default treemacs setting."
  (use-package treemacs
    :ensure t
    :defer t
    :config
    (progn
      (setq treemacs-collapse-dirs 0
            treemacs-deferred-git-apply-delay 0.5
            treemacs-directory-name-transformer      #'identity
            treemacs-display-in-side-window          t
            treemacs-eldoc-display                   'detailed
            treemacs-file-event-delay                5000
            treemacs-file-extension-regex            treemacs-last-period-regex-value
            treemacs-file-follow-delay               0.2
            treemacs-file-name-transformer           #'identity
            treemacs-follow-after-init               t
            treemacs-expand-after-init               t
            treemacs-find-workspace-method           'always-ask
            treemacs-git-command-pipe                ""
            treemacs-goto-tag-strategy               'refetch-index
            treemacs-header-scroll-indicators        '(nil . "^^^^^^")
            treemacs-hide-dot-git-directory          nil
            treemacs-indentation                     2
            treemacs-indentation-string              " "
            treemacs-is-never-other-window           nil
            treemacs-max-git-entries                 5000
            treemacs-missing-project-action          'ask
            treemacs-move-forward-on-expand          nil
            treemacs-no-png-images                   nil
            treemacs-no-delete-other-windows         t
            treemacs-project-follow-cleanup          nil
            treemacs-persist-file                    (expand-file-name ".cache/treemacs-persist" user-emacs-directory)
            treemacs-position                        'left
            treemacs-read-string-input               'from-child-frame
            treemacs-recenter-distance               0.1
            treemacs-recenter-after-file-follow      nil
            treemacs-recenter-after-tag-follow       nil
            treemacs-recenter-after-project-jump     'always
            treemacs-recenter-after-project-expand   'on-distance
            treemacs-litter-directories              '("/node_modules" "/.venv" "/.cask")
            treemacs-project-follow-into-home        nil
            treemacs-show-cursor                     nil
            treemacs-show-hidden-files               t
            treemacs-silent-filewatch                nil
            treemacs-silent-refresh                  nil
            treemacs-sorting                         'alphabetic-asc
            treemacs-select-when-already-in-treemacs 'move-back
            treemacs-space-between-root-nodes        t
            treemacs-tag-follow-cleanup              t
            treemacs-tag-follow-delay                1.5
            treemacs-text-scale                      nil
            treemacs-user-mode-line-format           nil
            treemacs-user-header-line-format         nil
            treemacs-wide-toggle-width               70
            treemacs-width                           35
            treemacs-width-increment                 1
            treemacs-width-is-initially-locked       t
            treemacs-workspace-switch-cleanup        nil)
      (treemacs-follow-mode t)
      (treemacs-filewatch-mode t)
      (treemacs-fringe-indicator-mode 'always)
      (treemacs-hide-gitignored-files-mode nil))
    :bind
    (:map global-map
          ([f8] . treemacs)))
  
;(use-package treemacs-evil
;  :after (treemacs-evil)
;  :ensure t)

  (use-package treemacs-projectile
    :after (treemacs projectile)
    :ensure t)

  (use-package treemacs-icons-dired
    :hook (dired-mode . treemacs-icons-dired-enable-once)
    :ensure t)

  (use-package treemacs-magit
    :after (treemacs magit)
    :ensure t)

  (use-package treemacs-persp
    :after (treemacs persp-mode)
    :ensure t
    :config (treemacs-set-scope-type 'Perspectives))

;(use-package treemacs-tab-bar
;  :after (treemacs)
;  :ensure t
;  :config (treemacs-set-scope-type 'Tabs))
   )

(kapani--apply-default-treemacs-setting)

(provide 'kapani--apply-default-treemacs-setting)
;;; kapani--apply-default-treemacs-setting.el ends here
