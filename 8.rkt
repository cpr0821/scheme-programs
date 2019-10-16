#lang racket

(define (EXP-DEPTH list)
  (if (not (pair? list)) 0
  (max (add1 (EXP-DEPTH (car list)))
  (EXP-DEPTH (cdr list)))))