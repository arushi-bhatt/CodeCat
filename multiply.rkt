;This program provides practice session for multiplication using speed mathematics skills. 
#lang racket
;variable for storing score
(define score 0)
(define lst  (list  '0))
(define i 0)

;10 sets of no. will be printed
(for ([i (in-range  1 6)]) 
  ;random nos. within range of 1-100 will be generated
  (define-values (p q) (values (random 1 100) (random 1 100)))
  (set! lst (append lst (list p)(list q)))
  
  ;print the nos.
  (printf "(~a) ~a * ~a \n"i p q)
  ;gets answer from user and store it in the variable x
  
  (define x (read))
  ; checks for the correct answer and increment the value of 'score' if input ans is true  
  (cond [(equal? x (* p q )) (printf "true :) \n") +(set! score (add1 score))] 
        ;if input answer is wrong then print false
        [else (printf "false :( \n")]  
        )
  )
(printf "\n****  your score = ~a/5" score)  ;print your score

(for ([i (in-range  1 12)])
  (printf "~a * ~a \n "
          (list-ref lst(+ i 1))
          (list-ref lst(+ i 2))
          )
  )