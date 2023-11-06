;;; https://www.gnu.org/software/emacs/manual/html_node/elisp/Building-Lists.html

(let
    (
     (cons-0 (cons 1 '(2)))
     (cons-1 (cons 1 '()))
     (cons-2 (cons 1 2))
     (list-0 (list 1 2 3 4 5))
     (list-1 (list 6 7 '(8 9) 'foo))
     (list-2 (list))
     (list-3 (make-list 3 123))
     (foo 123)
     (list-4 (list))
     (pine "PINE")
     (oak "OAK")
     (maple "MAPLE")
     (birch "BIRCH")
     (trees nil)
     (more-trees nil)
     (var-0 nil)
     (var-1 nil)
     (var-2 nil)
     (foo-list (list 1 2 3))
     (foo-not-list "NOT-LIST")
     (ns0 nil)
     (ns1 nil)
     (ns2 nil)
     (ns3 nil)
     (ns4 nil)
     (ns5 nil)
     (ns6 nil))
  
  (setq foo 456)

  (setq list-4 (list 10 20 '(30 40) foo))
  (setq trees '(pine oak))
  (setq more-trees (append '(maple birch) trees))
  (setq var-0 (append [a b] "cd" nil))
  (setq var-1 (apply 'append '((a b c) nil (x y z) nil)))
  (setq var-2 (flatten-tree '(1 (2 . 3) nil (4 5 (6)) 7)))
  
  (message "-----")
  (message "cons-0 = (cons 1 '(2)) : %s" cons-0)
  (message "(listp cons-0): %s" (listp cons-0))
  (message "cons-1 = (cons 1 '())  : %s" cons-1)
  (message "(listp cons-1): %s" (listp cons-1))
  (message "cons-2 = (cons 1 2)    : %s" cons-2)
  (message "(listp cons-2): %s" (listp cons-2))
  (message "(list-0 (list 1 2 3 4 5)): %s" list-0)
  (message "list-0 is list: %s" (listp list-0))
  (message "(list-1 (list 6 7 '(8 9) 'foo)): %s" list-1)
  (message "(list-2 (list 6 7 '(8 9) foo)): %s" list-2)
  (message "list-3: %s" list-3)
  (message "foo: %s" foo)
  (message "list-4: %s" list-4)
  (message "trees: %s" trees)
  (message "more-trees: %s" more-trees)
  (message "var-0: %s" var-0)
  (message "var-1: %s" var-1)
  (message "var-2: %s" var-2)

  (dolist (elem (ensure-list foo-list))
    (message "foo-list elem: %s"  elem))

  (message "foo-list: %s" foo-list)
  (message "(ensure-listfoo-list): %s" (ensure-list foo-list))

  (message "foo-not-list: %s" foo-not-list)
  (message "(ensure-list foo-not-list): %s" (ensure-list foo-not-list))

  (setq ns0 (number-sequence 4 9))
  (message "num-seq 4 9 => %s" ns0)

  (setq ns1 (number-sequence 9 4 -1))
  (message "num-seq 9 4 -1 => %s" ns1)

  (setq ns2 (number-sequence 9 4 -2))
  (message "num-seq 9 4 -2 => %s" ns2)

  (setq ns3 (number-sequence 8))
  (message "num-seq 8 => %s" ns3)

  (setq ns4 (number-sequence 8 5))
  (message "num-seq 8 5 => %s" ns4)

  (setq ns5 (number-sequence 5 8 -1))
  (message "num-seq 5 8 -1 => %s" ns5)

  (setq ns6 (number-sequence 1.5 6 2))
  (message "num-seq 1.5 6 2 => %s" ns6)

  )
