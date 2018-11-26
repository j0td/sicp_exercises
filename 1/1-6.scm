#lang racket
;; -*- coding: utf-8 -*-

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x) 
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

; if statement evaluate predicate firstly, then evaluate which one of clauses.
; but new-if(cond) evaluate both side of clauses - loop infinite (sqrt-iter (improve guess x) x))