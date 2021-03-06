;; r=mult x y implies r+a=multacc x y a

(declare-fun G (Int Int Int Int) Bool)
(declare-fun NegMult (Int Int Int) Bool)
(declare-fun MultAcc (Int Int Int Int) Bool)
(declare-fun mu () Bool)
(declare-fun nu () Bool)

(assert (forall ((x Int) (y Int) (a Int) (r Int)) (G x y a r)))

(assert (forall ((x Int) (y Int) (a Int) (r Int))
  (= (G x y a r) (or (NegMult x y r) (MultAcc x y a (+ r a))))))

(assert (and nu (forall ((x Int) (y Int) (r Int))
  (= (NegMult x y r) (and
    (or (not (= y 0)) (not (= r 0)))
    (or (= y 0) (NegMult x (- y 1) (- r x))))))))

(assert (and mu (forall ((x Int) (y Int) (a Int) (r Int))
  (= (MultAcc x y a r) (or
    (and (= y 0) (= r a))
    (and (not (= y 0)) (MultAcc x (- y 1) a (- r x))))))))


(check-sat)
