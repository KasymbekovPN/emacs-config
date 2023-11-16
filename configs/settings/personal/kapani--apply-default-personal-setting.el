;;; kapani-settings --- User default setting
;;; Commentary:
;;; User settings for .emacs

;;; Code:

(defun kapani--apply-default-personal-setting ()
  "It's appllying default personal setting."
  (kill-buffer "*scratch*") ;;; close *scratch* on start

   ;;; Scrolling
  (setq scroll-step 1)
  (setq scroll-margin 10)
  (setq scroll-conservatively 10000)

  (setq search-highlight        t)
  (setq query-replace-highlight t)

  (when (version<= "26.0.50" emacs-version )
    (global-display-line-numbers-mode))

  (setq-default tab-width 4)
  (setq-default standart-indent 4)

  ;;; TABs are not need
  (setq-default c-basic-offset 4 c-indent-level 4 indent-tabs-mode nil)

  ;;; Do not make backups
  (setq backup-inhibited t)

  ;;; Do not make autosaving
  (setq auto-save-default nil)

  ;;; Remember where was cursor last time
  (setq-default save-place t)

  ;;; Ctrl+C, Ctrl+V!
  (cua-mode 1)

  ;;; Save opened files
  (desktop-save-mode 1)

  ;;; Hotkey's changing
  (global-set-key (kbd "C-s") 'save-buffer) ;; previous : isearch-forward
  (global-set-key (kbd "C-f") 'isearch-forward)
  ;(global-set-key (kbd "C-a") 'mark-whole-buffer) ;; previous : move-beginning-of-line
  (global-set-key (kbd "C-x C-e") 'eval-buffer) ;; previous : eval-last-sexp

   ;;; Toggle  line highlighting
  (global-hl-line-mode 1)

   ;;; Menu bar off
  (menu-bar-mode -1)

   ;;; Scroll bar off
  (scroll-bar-mode -1)
  (horizontal-scroll-bar-mode -1)

   ;;; toolbar off
  (tool-bar-mode -1)

   ;;; Electric pair mode
  (electric-pair-mode 1))

(kapani--apply-default-personal-setting)

(provide 'kapani--apply-default-personal-setting)
;;; kapani--apply-default-personal-setting.el ends here
