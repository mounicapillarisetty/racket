#lang racket
;;Assignment 1 SYSC 3101
;;Author: Mounica Pillarisetty

;;Exercise 7

;; (a)
(define (f-recursive n) 
  (cond
    [(< n 4) n]
    [(or (> n 4) (eq? n 4)) 
     (+ (* 2 (f-recursive(- n 1))) (* 3 (f-recursive (- n 3))) (* 4 (f-recursive (- n 5))))]))

;; (b)
;; a helper function that helps iteratively calculate f(n)
(define (f-help v w x y z value)
  (cond 
    [(< value 4) v]
    [(f-help (+ (* 2 v) (* 3 x) (* 4 z)) v w x y (- value 1))]))

(define (f-iterative n)
  (cond
    [(< n 4) n]
    [else (f-help 3 2 1 0 -1 n)]))

