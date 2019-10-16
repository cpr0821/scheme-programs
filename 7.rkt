#lang scheme

(define (subsets x)
  (if (null? x)
      (list '())
      (let ((rest (subsets (cdr x))))
	(append rest (map (lambda (set) 
			     (cons (car x) set)) 
			  rest)))))
