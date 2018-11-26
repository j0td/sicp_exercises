#lang racket
;; -*- coding: utf-8 -*-

(define (square x) (* x x))

(define (abs x)
  (if (< x 0)
    (- x)
    x))

(define (sqrt-iter guess guess-prev x)
  (if (good-enough? guess guess-prev)
    guess
    (sqrt-iter (improve guess x) guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess guess-prev)
  (< (abs (- guess guess-prev)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 10.0 x))

(sqrt 0.000001)
(sqrt 1000000000000000000000)
; works well!