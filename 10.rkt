#lang scheme

(define (fib-squares n)
   (map square(map fib(range 0 (+ n 1)))))

(define (square x) ;;(returns square, works)
  (* x x))

(define fib (lambda (n) ;; (returns fib number, works)
    (cond
      ((zero? n)0)
      ((or (= n 1)(= n 2))1)
        ((+ (fib (- n 1))
           (fib (- n 2)))))))
  