;; Simplest version of problem 
;; 5 locations

(define (problem taxi1)
   (:domain taxi_simplest)
   (:objects
        ;; 1 taxi, 5 locations, 3 people
         taxi_1 - taxi
         livingstone_tower royal_college graham_hills tic barony_hall - location
         scott rajesh lingjie - person
        )
    (:init
        ;; Set all to be outside taxi and at different locations
        
        (not (inTaxi scott taxi_1))
        (plocation scott livingstone_tower)

        (not (inTaxi rajesh taxi_1))
        (plocation rajesh graham_hills)

        (not (inTaxi lingjie taxi_1))
        (plocation lingjie barony_hall)
        
        ;; set taxi location
        (tlocation taxi_1 tic)
        
        ;; Simple connections
        ;; Initially going to assume simple binary connections (i.e. a circle)
        ;; liv - royal - gra - tic - barony -- liv
        (connects livingstone_tower royal_college)
        (connects royal_college graham_hills)
        (connects graham_hills tic)
        (connects tic barony_hall)
        (connects barony_hall livingstone_tower)
        )
    
    (:goal
      (and
       (not (inTaxi scott taxi_1))
       (not (inTaxi rajesh taxi_1))
       (not (inTaxi lingjie taxi_1))
       (plocation scott graham_hills)
       (plocation rajesh barony_hall)
       (plocation lingjie livingstone_tower)

       )
      
      )
)
