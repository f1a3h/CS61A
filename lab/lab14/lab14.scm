(define (split-at lst n)
  'YOUR-CODE-HERE
  (define (helper_car lst n)
	(if (null? lst)
		nil
		(if (= n 0)
			nil
			(cons (car lst) (helper_car (cdr lst) (- n 1))))))
	
  (define (helper_cdr lst n)
	(if (null? lst)
		nil
		(if (= n 0)
			lst
			(helper_cdr (cdr lst) (- n 1)))))
	
  (cons (helper_car lst n) (helper_cdr lst n))
)


(define-macro (switch expr cases)
	(cons 'cond
		(map (lambda (case) (cons (eq? (eval expr) (car case)) (cdr case)))
    			cases))
)

