#lang racket
(define score 0) 
(for ([i '(1 2 3 4 5)])
(define p (random 90 100))
  (define q (random 90 100))
(printf " ~a * ~a \n" p q
        )
  (define x (read))
  
  (cond [(equal? x (* p q )) (printf "true :) \n"   )
                               
+(set! score (add1 score)  )                       ]
[else (printf "false :( \n")]
))
(printf "\n****  your score = ~a/5" score)