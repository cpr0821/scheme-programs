#lang scheme

(define (last list)
  (cond ((null? list) '())
        ((null? (cdr list)) (car list))
        (else (last (cdr list)))))
  
