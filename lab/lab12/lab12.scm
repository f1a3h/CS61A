
(define-macro (def func args body)
    'YOUR-CODE-HERE
    `(define ,(cons func args)
      ,body))


(define (map-stream f s)
    (if (null? s)
    	nil
    	(cons-stream (f (car s)) (map-stream f (cdr-stream s)))))

(define all-three-multiples
  (map-stream (lambda (x) (+ x 3)) (cons-stream 0 all-three-multiples))
)


(define (compose-all funcs)
  'YOUR-CODE-HERE
  (if (null? funcs)
    (lambda (x) x)
    (lambda (x) ((compose-all (cdr funcs))
      ((car funcs) x))))
)


(define (partial-sums stream)
  'YOUR-CODE-HERE
  (define (helper last s)
    (if (null? s)
      nil
      (cons-stream (+ last (car s))
        (helper (+ last (car s)) (cdr-stream s)))))
  (helper 0 stream)
)

