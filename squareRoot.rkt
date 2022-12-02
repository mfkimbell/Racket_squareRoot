#lang racket

(define (abs x) (if (< x 0) (* x -1) x))

(define (square x) (* x x))

(define (average a b) (/ (+ a b) 2))

(define (good-enough?2 prevguess guess x)
  (< (abs (- (/ prevguess prevguess) (/ prevguess guess))) .6))

(define (improve guess x)
(average guess (/ x guess)))

(define (sqrt-iter prevguess guess x)
(if (good-enough?2 prevguess guess x)
guess
(sqrt-iter guess (improve guess x) x)))

(sqrt-iter 0.001 1 64)



