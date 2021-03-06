(declare-fun $guarantee5$4 () Bool)
(declare-fun $bias$1 () Int)
(declare-fun $guarantee4$4 () Bool)
(declare-fun $guarantee1$4 () Bool)
(declare-fun $bias_max$4 () Bool)
(declare-fun $bias$4 () Int)
(declare-fun $state$1 () Int)
(declare-fun $x$2 () Int)
(declare-fun $guarantee2$4 () Bool)
(declare-fun $bias_max$1 () Bool)
(declare-fun $guarantee3$4 () Bool)
(declare-fun $guarantee_all$4 () Bool)
(declare-fun $state$4 () Int)

(assert (let ((a!1 (or (and (= $x$2 1) (= $bias$1 (- 1)))
               (and (not (= $x$2 1)) (= $bias$1 1))))
      (a!3 (or $bias_max$1 (>= 0 2) (<= 0 (- 0 2))))
      (a!4 (or (not (and (= $state$1 0) (= $x$2 1))) (= 0 2)))
      (a!5 (or (not (and (= $state$1 0) (= $x$2 0))) (= 0 1)))
      (a!8 (and (= $x$2 1)
                (or (>= $bias$1 1) (<= $bias$1 (- 3)) $bias_max$1)
                (or (not (= $state$1 0)) (not (= $x$2 1)))
                (or (not (= $state$1 0)) (not (= $x$2 0)))
                (or (= $x$2 0) (= $x$2 1))))
      (a!9 (= $bias_max$4
              (or $bias_max$1 (>= (+ 1 $bias$1) 2) (<= (+ 1 $bias$1) (- 0 2)))))
      (a!10 (or (= (+ 1 $bias$1) 0) (not (= 3 0))))
      (a!11 (or (not (and (= $state$1 0) (= $x$2 1))) (= 3 2)))
      (a!12 (or (not (and (= $state$1 0) (= $x$2 0))) (= 3 1)))
      (a!13 (and (not (= $x$2 1))
                 (or (>= $bias$1 3) (<= $bias$1 (- 1)) $bias_max$1)
                 (or (not (= $state$1 0)) (not (= $x$2 1)))
                 (or (not (= $state$1 0)) (not (= $x$2 0)))
                 (or (= $x$2 0) (= $x$2 1))))
      (a!14 (= $bias_max$4
               (or $bias_max$1
                   (>= (+ (- 1) $bias$1) 2)
                   (<= (+ (- 1) $bias$1) (- 0 2)))))
      (a!15 (or (not (= 3 0)) (= (+ (- 1) $bias$1) 0))))
(let ((a!2 (and a!1
                (not $bias_max$1)
                (or (not (= $state$1 0)) (not (= $x$2 1)))
                (or (not (= $state$1 0)) (not (= $x$2 0)))
                (or (= $x$2 0) (= $x$2 1))))
      (a!6 (= $guarantee_all$4 (and true (or (not a!3) (= 0 3)) a!5 true a!4)))
      (a!16 (ite a!13
                 (and (= $bias$4 (+ (- 1) $bias$1))
                      a!14
                      (= $guarantee1$4 a!15)
                      (= $state$4 3)
                      (= $guarantee2$4 a!11)
                      (= $guarantee3$4 a!12)
                      (= $guarantee4$4 true)
                      (= $guarantee5$4 true)
                      (= $guarantee_all$4 (and true true a!12 a!11 a!15)))
                 true)))
(let ((a!7 (and (= $bias$4 0)
                (= $bias_max$4 a!3)
                (= $guarantee1$4 true)
                (= $state$4 0)
                (= $guarantee2$4 a!4)
                (= $guarantee3$4 a!5)
                (= $guarantee4$4 (or (not a!3) (= 0 3)))
                (= $guarantee5$4 true)
                a!6))
      (a!17 (ite a!8
                 (and (= $bias$4 (+ 1 $bias$1))
                      a!9
                      (= $guarantee1$4 a!10)
                      (= $state$4 3)
                      (= $guarantee2$4 a!11)
                      (= $guarantee3$4 a!12)
                      (= $guarantee4$4 true)
                      (= $guarantee5$4 true)
                      (= $guarantee_all$4 (and true true a!12 a!10 a!11)))
                 a!16)))
  (ite a!2 a!7 a!17)))))
(check-sat)
