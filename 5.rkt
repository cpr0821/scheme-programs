#lang scheme

(define (reverse list)
  (helper2 list '()))

(define (helper2 list x)
  (cond ((null? list) x)
        ((not (list? (car list))) (helper2 (cdr list) (cons (car list) x)))
        (else (helper2 (cdr list) (cons (reverse1 (car list)) x)))))

(define (reverse1 list)
  (helper1 list '()))

(define (helper1 list x)
  (cond ((null? list) x)
        (else (helper1 (cdr list) (cons (car list) x)))))
  
