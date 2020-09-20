#lang racket
;;Assignment 1 SYSC 3101
;;Author: Mounica Pillarisetty

;;Exercise 8

;;Helper methods
(define (identity x) x)
(define (increment n) (+ n 1))
(define (sum-integers a b)
  (sum identity a increment b))
;;helper method that iteratively sums
(define(help-sum fn a next b ans)
  (if (> a b) ans
      (help-sum fn (next a) next b (+ (fn a) ans))))


;; Calculates the sum so that it generates an iterative process 
(define (sum fn a next b)
  (help-sum fn a next b 0))

