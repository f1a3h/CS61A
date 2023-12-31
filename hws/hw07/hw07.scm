(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  'YOUR-CODE-HERE
  (car (cdr s))
)

(define (caddr s)
  'YOUR-CODE-HERE
  (cadr (cdr s))
)


(define (sign num)
  'YOUR-CODE-HERE
  (cond ((> num 0) 1)
        ((= num 0) 0)
        ((< num 0) -1))
)


(define (square x) (* x x))

(define (pow x y)
  'YOUR-CODE-HERE
  (if (= y 1)
      x
      (if (even? y)
          (square (pow x (/ y 2)))
          (* x (square (pow x (floor (/ y 2)))))))
)


(define (unique s)
  'YOUR-CODE-HERE
  (if (null? s)
      nil
      (cons (car s) (unique (filter (lambda (x) (not (eq? x (car s)))) (cdr s)))))
)


(define (replicate x n)
  'YOUR-CODE-HERE
  (define (replicate-tail n ret)
      (if (= n 0)
          ret
          (replicate-tail (- n 1) (append ret (list x)))))
  (replicate-tail n nil)
)


(define (accumulate combiner start n term)
  'YOUR-CODE-HERE
  (if (= n 1)
      (combiner start (term n))
      (combiner (term n) (accumulate combiner start (- n 1) term)))
)


(define (accumulate-tail combiner start n term)
  'YOUR-CODE-HERE
  (define (helper combiner n term ret)
      (if (= n 0)
          ret
          (helper combiner (- n 1) term (combiner ret (term n)))))
  (helper combiner n term start)
)


(define-macro (list-of map-expr for var in lst if filter-expr)
  'YOUR-CODE-HERE
  `(map (lambda (,var) ,map-expr) (filter (lambda (,var) ,filter-expr) ,lst))
)

