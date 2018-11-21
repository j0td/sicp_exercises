#lang racket

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 3 -3)
; ((if (> b 0) + -) a b)
; ((if (> -3 0) + -) 3 -3)
; ((if #f + -) 3 -3)
; (- 3 -3)
; 6
