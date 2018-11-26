#lang racket
;; -*- coding: utf-8 -*-

(define (square x) (* x x))

(define (abs x)
  (if (< x 0)
    (- x)
    x))

(define (cubert-iter guess guess-prev x)
  (if (good-enough? guess guess-prev)
    guess
    (cubert-iter (improve guess x) guess x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* guess 2))
     3))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess guess-prev)
  (< (abs (- guess guess-prev)) 0.001))

(define (cubert x)
  (cubert-iter 1.0 10.0 x))

(cubert 27)