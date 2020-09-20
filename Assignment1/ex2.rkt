#lang racket
;;Assignment 1 SYSC 3101
;;Author: Mounica Pillarisetty

;;Exercice 2
;; procedure a-b does:
   ;;(1) if b > 0 then a and b gets added (a + b)
   ;;(2) if b = 0, then a and b gets subtracted (a - b)
   ;;(3) if b < 0, then a and b gets multiplied (a * b)

;;(1)
(a-b 1 2)
==>(+ 1 2)
==> 3

;;(2)
(a-b 6 0)
==>(- 6 0)
==> 6

;;(3)
(a-b 3 -1)
==>(* 3 -1)
==> -3