;This program provides practice session for multiplication using speed mathematics skills. 
#lang racket

(define score 0) ;variable for storing score

(for ([i '(1 2 3 4 5)]) ;5 sets of no. will be printed
  
(define p (random 90 100)) ;random nos. within range of 90-100 will be generated
(define q (random 90 100))

  (printf " ~a * ~a \n" p q) ;print the nos.
  (define x (read))  ;gets answer from user and store it in the variable x
  
  (cond [(equal? x (* p q )) (printf "true :) \n") +(set! score (add1 score))] ; checks for the correct answer and increment the value of 'score' if input ans is true  
                              
[else (printf "false :( \n")] ;if input answer is wrong then print false 
)
  )
(printf "\n****  your score = ~a/5" score)  ;print your score