;;; Commentary:
;;; Colored braces settings

;;; Code:

(use-package
  rainbow-delimiters
  :init (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
  (setq rainbow-delimiters-max-face-count 3))

;;; rainbow-delimiters.el ends here
