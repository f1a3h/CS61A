(define (rle s)
  'YOUR-CODE-HERE
  (define (helper x cnt s)
    (if (null? s)
        (list x cnt)
        (if (not (= x (car s)))
            (list x cnt)
            (helper x (+ cnt 1) (cdr-stream s)))))

  (define (next x s)
    (if (null? s)
        nil
        (if (= x (car s))
            (next x (cdr-stream s))
            s)))

  (if (null? s)
    nil
    (cons-stream (helper (car s) 0 s) (rle (next (car s) s))))
)



(define (group-by-nondecreasing s)
    'YOUR-CODE-HERE
    (define (helper last s)
        (if (null? s)
            (list last)
            (if (<= last (car s))
                (cons last (helper (car s) (cdr-stream s)))
                (list last))))

    (define (next last s)
        (if (null? s)
            nil
            (if (<= last (car s))
                (next (car s) (cdr-stream s))
                s)))

    (if (null? s)
        nil
        (cons-stream (helper (car s) (cdr-stream s)) (group-by-nondecreasing (next (car s) (cdr-stream s)))))
)


(define finite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 3
                (cons-stream 1
                    (cons-stream 2
                        (cons-stream 2
                            (cons-stream 1 nil))))))))

(define infinite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 2
                infinite-test-stream))))

