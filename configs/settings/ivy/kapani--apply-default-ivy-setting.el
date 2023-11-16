;;; kapani-settings --- Ivy default setting
;;; Commentary:
;;; Ivy setting
;;; https://github.com/emacsmirror/ivy
;;; https://oremacs.com/swiper/

;;; Code:

(defun kapani--apply-default-ivy-setting ()
  "It's appllying default ivy setting."
  (use-package ivy
    :ensure t
    :defer t
    :config
    (progn
      (setq ivy-use-virtual-buffers t
            ivy-count-format "(%d/%d) "
            enable-recursive-minibuffers t)
      (ivy-mode +1))
    :bind (
           ("C-c C-r" . ivy-resume)
           ("C-x B" . ivy-switch-buffer-other-window))
    )

  (use-package counsel
    :after ivy
    :config (counsel-mode))

  (use-package all-the-icons-ivy-rich
    :ensure t
    :init
    (all-the-icons-ivy-rich-mode 1))

  (use-package ivy-rich
    :after ivy
    :ensure t
    :init (ivy-rich-mode 1) ;; this gets us descriptions in M-x.
    :custom
    (ivy-virtual-abbreviate 'full
                            ivy-rich-switch-buffer-align-virtual-buffer t
                            ivy-rich-path-style 'abbrev)
    :config
    (ivy-set-display-transformer 'ivy-switch-buffer
                                 'ivy-rich-switch-buffer-transformer)))

(kapani--apply-default-ivy-setting)

(provide 'kapani--apply-default-ivy-setting)
;;; kapani--apply-default-ivy-setting.el ends here
