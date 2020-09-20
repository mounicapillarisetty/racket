#lang racket
;;Assignment 1 SYSC 3101
;;Author: Mounica Pillarisetty

;;Exercice 1

;; Calculates the sum of the squares of the largest two numbers
(define (sum-largest-squares x y z)
  (cond
    [(> x y) (cond
               [(> y z) (sum-of-squares x y)]
               [else (sum-of-squares x z)])] 
    [else (cond
               [(> x z) (sum-of-squares y x)]
               [else (sum-of-squares y z)])]))

;; Calculates x-squared
(define (square x) (* x x))

;; Calculates x-squared plus y-squared
(define (sum-of-squares x y)
  (+ (square x) (square y)))