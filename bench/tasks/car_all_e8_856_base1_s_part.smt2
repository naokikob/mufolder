; K = 1
; Transition relation
(define-fun T ((%init Bool) ($m$0 Bool) ($s$0 Bool) ($V27_dist$0 Int) ($V28_speed$0 Int) ($OK$0 Bool) ($V33_env$0 Bool) ($V92_X$0 Bool) ($m$1 Bool) ($s$1 Bool) ($V27_dist$1 Int) ($V28_speed$1 Int) ($OK$1 Bool) ($V33_env$1 Bool) ($V92_X$1 Bool)) Bool (and (= $OK$1 (=> $V33_env$1 (and (and (and (>= $V27_dist$1 0) (< $V27_dist$1 11)) (< $V28_speed$1 4)) (>= $V28_speed$1 0)))) (= $V33_env$1 (ite %init $V92_X$1 (and $V92_X$1 $V33_env$0))) (= $V92_X$1 (and (not (and $m$1 $s$1)) (< $V27_dist$1 32767)))))
; Universally quantified variables
(declare-fun $m$~1 () Bool)
(declare-fun $s$~1 () Bool)
(declare-fun $V27_dist$~1 () Int)
(declare-fun $V28_speed$~1 () Int)
(declare-fun $OK$~1 () Bool)
(declare-fun $V33_env$~1 () Bool)
(declare-fun $V92_X$~1 () Bool)
(declare-fun $m$0 () Bool)
(declare-fun $s$0 () Bool)
(declare-fun $V27_dist$0 () Int)
(declare-fun $V28_speed$0 () Int)
(declare-fun $OK$0 () Bool)
(declare-fun $V33_env$0 () Bool)
(declare-fun $V92_X$0 () Bool)
(assert (T true $m$~1 $s$~1 $V27_dist$~1 $V28_speed$~1 $OK$~1 $V33_env$~1 $V92_X$~1 $m$0 $s$0 $V27_dist$0 $V28_speed$0 $OK$0 $V33_env$0 $V92_X$0))
