;This program provides practice session for multiplication using speed mathematics skills. 
#lang racket

;variable for storing score
(define score 0)
(define lst  (list ))
(define wrng (list))
(define i 0)

;10 sets of no. will be printed
(for ([i (in-range  1 6)]) 
  ;random nos. within range of 1-100 will be generated
  (define-values (p q) (values (random 1 100) (random 1 100)))
  
  
  ;print the nos.
  (printf "(~a) ~a * ~a \n"i p q)
  ;gets answer from user and store it in the variable x
  
  (define x (read))
  (set! lst (append lst (list p)(list q)(list x)))
  ; checks for the correct answer and increment the value of 'score' if input ans is true  
  (cond [(equal? x (* p q )) (set! score (add1 score))] 
        ;if input answer is wrong then print false
        [else  (set! wrng (append wrng (list (* i 3))))]  
        )
  )

(printf "\n****  your score = ~a/5 \n" score)  ;print your score 
(printf "\n****  correct = ~a \n" score )
(printf "\n****  incorrect = ~a  \n" (- 5 score))
(cond [(equal? (- 5 score) 0) (printf "*** Great!! all correct  *** ") ] 
       
        [else  (for ([i (in-range  0 (length (wrng)) )])
  (printf "~a * ~a  = ~a  ||  ~a   \n "
          (list-ref lst (list-ref wrng i ) )
          (list-ref lst(+ (list-ref wrng i ) 1))
          (*  (list-ref lst (list-ref wrng i ) ) (list-ref lst(+ (list-ref wrng i ) 1))
          )
          (list-ref lst(+ (list-ref wrng i ) 2)))
  )]  
        )
