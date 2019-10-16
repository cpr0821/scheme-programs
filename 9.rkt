#lang scheme

(define (enum-interval low high)
  (filter even?(range low high)))
  
  