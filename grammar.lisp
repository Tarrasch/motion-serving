(defun serve-robot-grammar ()
  '((LIFE SERVE-COKE LIFE)
    (SERVE-COKE (pred found) (pred (not coke-empty)) (mu lift) KEEP-POURING (pred glass-full)                        (mu put-down) (mu serve-glass))
    (SERVE-COKE (pred found) (pred (not coke-empty)) (mu lift) KEEP-POURING (pred (and (not glass-full) coke-empty)) (mu put-down))
    (KEEP-POURING (pred (and (not glass-full) (not coke-empty))) (mu pour) KEEP-POURING)
    (KEEP-POURING )
    (SERVE-COKE (pred found) (pred coke-empty) (mu discard-can))
    (SERVE-COKE (pred (not found)) (mu next-line))
    )
  )
