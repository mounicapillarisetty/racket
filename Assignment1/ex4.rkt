#lang racket
;;Assignment 1 SYSC 3101
;;Author: Mounica Pillarisetty

;;Exercise 4

(define(count-of-items code type)
  (cond
    [(< code 100) 0]
    [(and (< code 1000) (eq? (remainder code 100) type) (+ (quotient code 100) (count-of-items(quotient code 100) type)))]
    [(and (> code 1000) (eq? (remainder(remainder code 1000) 100) type) (+ (quotient (remainder code 1000) 100) (count-of-items(quotient code 1000) type)))]
    [else (count-of-items (quotient code 1000) type)]))
