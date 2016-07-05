;This program provides practice session for multiplication using speed mathematics skills.
;Program 2(b)
;Multiplying numbers above 100


#lang racket
(printf   "*(2(b))__________Multiplying numbers above 100__________* \n")
;variable for storing score
(define score 0)
;list for storing questions pairs
(define lst  (list ))
;list for storing answers
(define ans (list))
;list for storing index of wrong questions
(define wrng (list))

(define i 0)
(printf " Here is the list !! \n")
;10 sets of no. will be printed
(for ([i (in-range  0 10)]) 
          ;random nos. within range of 100-130 will be generated
             (define-values (p q) (values (random 100 130) (random 100 130)))
          ;print the nos.
             (printf "(~a) ~a * ~a \n"(+ i 1) p q)
          ;store the list of random pairs in list 'lst'
             (set! lst (append lst (list p)(list q)))
 );end of for
  
(printf " \n Your time starts now !!!\n" )
;note the starting time 
(define start (current-seconds))
; now we will read the answers
(for ([i (in-range  0 10)]) 
           (printf "(~a)"(+ i 1))

           ;get answer from user and store it in the variable x 
               (define x (read))
           ;add it to the list ans
               (set! ans (append ans (list x)))
          ; check for the correct answer and increment the value of 'score' if input ans is true  
                (cond [(equal? x (*(list-ref lst (* i 2)) (list-ref lst (+ (* i 2) 1)) ))
                       (set! score (add1 score))
                      ] 
          ;if input answer is wrong then print false
                      [else
                           (set! wrng (append wrng (list (* i 2))))
                      ];end of else  
                );end of cond
  ); end of for

; now time for evaluation
(printf "\n\n   Time Taken = ~a sec\n"(- (current-seconds) start))
(printf "\n    Score = ~a/10 \n" score)  
(printf "\n        Correct   = ~a \n" score )
(printf "\n        Incorrect = ~a  \n" (- 10 score))


;Check if all the answers are correct
       (cond [(equal? score 10)
              (printf "*** Great!! all correct  *** ")
             ] 
;if incorrect answers != 0 , then print the correct answer
             [else
                  (for ([i (in-range  0 (length wrng) )])
                            (printf "\n                (~a)    ~a * ~a  = ~a  ||  ~a   \n "
                                                       (+(/(list-ref wrng i)2)1 )
                                                       (list-ref lst (list-ref wrng i ) )
                                                       (list-ref lst(+(list-ref wrng i ) 1))
                                                       (*(list-ref lst (list-ref wrng i ))
                                                             (list-ref lst(+ (list-ref wrng i ) 1)) )
                                                        (list-ref ans(/(list-ref wrng i )2))
                             );end of printf
                   );end of for
              ];end of else  
        );end of cond
