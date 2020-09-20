#lang racket
;;Assignment 1 SYSC 3101
;;Author: Mounica Pillarisetty

;;Exercise 5

;; Iterative process
(gcd 279 15)
==>(gcd 15 (remainder 279 15))
==>(gcd 15 9)
==>(gcd 15 (remainder 15 9))
==>(gcd 9 6)
==>(gcd 6 (remainder 9 6))
==>(gcd 6 3)
==>(gcd 3 (remainder 6 3))
==>(gcd 3 0)
==>3
