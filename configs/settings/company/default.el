;;; Commentary:
;;; Company setting
;;; https://github.com/company-mode/company-mode
;;; https://github.com/sebastiencs/company-box

;;; Code:

(use-package company
  :ensure t
  :defer 2
  :diminish
  :custom
  (company-begin-command '(self-insert-command))
  (company-idle-delay .1)
  (company-minimum-prefix-length 2)
  (company-show-quick-access t)
  (company-tooltip-align-annotations 't)
  (global-company-mode t))

(use-package company-box
  :ensure t
  :after company
  :diminish
  :hook (company-mode . company-box-mode))

;;; company.el ends here
