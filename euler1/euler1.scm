;; euler1.scm
;; Find the sum of all the multiples of 3 or 5 below 1000.

(define (divisible-by-three-or-five num)
  (or (= (modulo num 3) 0)
      (= (modulo num 5) 0)
  )
)

(define (add-if-divisible-by-three-or-five num sum)
  (if 
    (divisible-by-three-or-five num)
    (+ num sum)
    sum
  )
)
