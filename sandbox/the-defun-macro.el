;;; https://www.gnu.org/software/emacs/manual/html_node/eintr/defun.html

(defun multiply-by-seven (number)
  "Multiply by 7"
  (* 7 number))

(message "result: %d" (multiply-by-seven 10))
