;;; https://www.gnu.org/software/emacs/manual/html_node/elisp/Defining-Variables.html


(defvar foo "123" "456")
(message "foo => %s" foo1)
(message "'foo => %s" 'foo1)

(setq foo1 "888")

(message (concat foo1 "__000"))

(setq foo1 "999")

(message (concat foo1 "__000"))

(defconst float-pi 3.141592653589793 "The value of Pi.")

(message "PI = %s" (number-to-string float-pi))

