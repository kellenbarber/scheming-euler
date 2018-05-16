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

(define (add-multiples-of-three-or-five-less-than-num num i sum)
  (if (< i num) (set! sum (add-if-divisible-by-three-or-five i sum)) sum)
  (if (< i num) (add-multiples-of-three-or-five-less-than-num num (+ i 1) sum) sum)
)

(define euler1 (add-multiples-of-three-or-five-less-than-num 1000 0 0))
