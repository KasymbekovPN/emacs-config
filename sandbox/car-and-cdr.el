;;; https://www.gnu.org/software/emacs/manual/html_node/eintr/car-_0026-cdr.html

(let (
      (pine "PINE")
      (rose "ROSE")
      (seal "SEAL")
      (dolphin "DOLPHIN")
      (whale "WHALE")
      (zebra "ZEBRA")
      (antelope "antelope")
      (gazelle "GAZELLE")
      (cheetah "CHEETAH")
      (tiger "TIGER")
      (lion "LION")
      (maple "MAPLE")
      (oak "OAK")
      (violet "VIOLET")
      (daisy "DAISY")
      (fir "FIR")
      (buttercup "BUTTERCUP")
      (list0 nil)
      (list1 nil)
      (list2 nil)
      (list3 nil)
      (list4 nil)
      (cons0 (cons 123 456))
      (list5 (list 1 2 3))
      )
  (message "-----")

  (setq list0 (list rose violet daisy buttercup))
  (message "list0 => %s" list0)

  (setq list1 (list pine fir oak maple))
  (message "list1 => %s" list1)

  (setq list2 (list lion tiger cheetah))
  (message "list2 => %s" list2)

  (setq list3 (list gazelle antelope zebra))
  (message "list3 => %s" list3)

  (setq list4 (list whale dolphin seal))
  (message "list4 => %s" list4)

  (message "car of list0 => %s" (car list0))
  (message "cdr of list0 => %s" (cdr list0))

  (message "cons0 => %s" cons0)
  (message "car of cons0 => %s" (car cons0))
  (message "cdr of cons0 => %s" (cdr cons0))

  (message "(cdr list5) => %s" (cdr list5))
  (message "(cdr (cdr list5)) => %s" (cdr (cdr list5)))
  (message "(cdr (cdr (cdr list5))) => %s" (cdr (cdr (cdr list5))))
  )
