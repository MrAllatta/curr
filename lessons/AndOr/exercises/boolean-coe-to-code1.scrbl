#lang curr/lib

@(define exprs '((> (+ 4 5) 9)
                 (= (+ 5 5) (- 20 10))
                 (or (> 10 11) (<= 7 9))
                 (and (< 5 10) (< 10 15))
                 (or (string=? favfruit "apple") (string=? favfruit "banana"))
                 (>= (string-length "My Game") 6)
                 (or (and (< 1 x) (< x 5))
                     (and (< 8 x) (< x 10)))
                 (>= (+ (image-width target) 200) 250)
                 (and (string=? winner "me") 
                      (or (>= score 50) (<= score 2)))                  
                 ))

@(exercise-handout 
  #:title "Converting Circles of Evaluation with Booleans to Code"
  #:forevidence "A-SSE.1-2&1&3"
  #:instr "For each Circle of Evaluation below, write down the code that corresponds to the Circle:"
  @(create-exercise-itemlist #:with-answer-blanks? #t (map sexp exprs)))
