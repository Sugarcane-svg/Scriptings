;1. palindrome
(define (palindrome a) 
    (equal? a (word a))
)

(define (word lis)
    (if (null? lis)
        '()
        (append (word (cdr lis)) (list (car lis)))  ;recursive call
    )
)

;output:
;1 ]=> (palindrome '(a b c b a))
;Value: #t




; 2.sum a series of fibonacci numbers
;get fibonacci
(define getFibonacci (lambda (x)
    (cond 
        ((<= x 0) 0)
        ((= x 1) 1)
        (else (+ (getFibonacci (- x 1)) (getFibonacci (- x 2)))) 
    )
))

; calculate sum
(define getFibSum 
    (lambda (x) 
        (cond
            ((<= x 0) 0)
            (else (+ (getFibonacci x) (getFibSum (- x 1))))
        )
    )
)

;output:
;1 ]=> (getfibsum 6)
;Value: 20





; 3.calculate 2 input with syntax checking
(define (add2 a b)
    (if(and (number? a) (number? b)) (+ a b) (string-append "different type cannot perform addition"))
)

;output:
;1 ]=> (add2 3 '(1))
;Value: "different type cannot perform addition"
;1 ]=> (add2 3 4)
;Value: 7 



; 4. 
;convert fahrenheit to celsius 
(define (ftoc x)
    (exact->inexact (/ (* (- x 32) 5) 9))
    
)

;convert celsius to fahrenheit
(define (ctof x)
    (exact->inexact (+ 32 (/ (* x 9) 5)))
)

;output: 
;1 ]=> (ctof 21)
;Value: 69.8
;1 ]=> (ftoc 70)
;Value: 21.11111111111111
