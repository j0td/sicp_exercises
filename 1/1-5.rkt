#lang racket

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

; applicative-order
;
; (test 0 (p))
; try to evaluate (p)
; (test 0 (p))
; loop

; normal-order
;
; (test 0 (p))
; (if (= 0 0) 0 (p))
; (if #t 0 (p))
; 0