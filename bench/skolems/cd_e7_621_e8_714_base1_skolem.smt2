(declare-fun $V109_cpt$2 () Int)
(declare-fun $V25_realistic$2 () Bool)
(declare-fun $V93_X$2 () Bool)
(declare-fun $diff$0 () Int)
(declare-fun $V110_acceptable$2 () Bool)
(declare-fun $V22_speed$2 () Int)
(declare-fun $V98_Sofar$2 () Bool)
(declare-fun $OK$2 () Bool)

(assert (let ((a!1 (and true (<= (- 0 4) $diff$0) (<= $diff$0 4) (>= $diff$0 1))))
  (and (= $OK$2 true)
       (= $V98_Sofar$2 (and (< 8 16) a!1 (<= 0 8)))
       (= $V25_realistic$2 a!1)
       (= $V93_X$2 (and (< 8 16) a!1 (<= 0 8)))
       (= $V22_speed$2 8)
       (= $V109_cpt$2 0)
       (= $V110_acceptable$2 true))))
(check-sat)
