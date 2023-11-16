;;; kapani-settings --- Rainbow delimiters default setting
;;; Commentary:
;;; Colored braces settings

;;; Code:

(defun kapani--apply-default-rainbow-delimiters-setting ()
  "It's appllying default rainbow delimiters setting."
  (use-package
    rainbow-delimiters
    :init (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
    (setq rainbow-delimiters-max-face-count 3)))

(kapani--apply-default-rainbow-delimiters-setting)

(provide 'kapani--apply-default-rainbow-delimiters-setting)
;;; kapani--apply-default-rainbow-delimiters-setting.el ends here
