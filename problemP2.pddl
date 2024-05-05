;; Simplest version of problem 
;; 5 locations

(define (problem taxi2)
   (:domain taxi_simplest2)
   (:objects
        ;; 1 taxi, 5 locations, 3 people
         taxi_1 taxi_2 - taxi
         livingstone_tower royal_college graham_hills tic barony_hall - location
         scott rajesh lingjie ryan mark bain - person
        )
    (:init
        ;; Set all to be outside taxi and at different locations
        (not (inTaxi scott taxi_1))
        (plocation scott livingstone_tower)

        (not (inTaxi rajesh taxi_1))
        (plocation rajesh graham_hills)

        (not (inTaxi lingjie taxi_1))
        (plocation lingjie barony_hall)

        (not (inTaxi ryan taxi_1))
        (plocation ryan royal_college)

        (not (inTaxi mark taxi_1))
        (plocation mark tic)

        (not (inTaxi bain taxi_1))
        (plocation bain livingstone_tower)
        
        ;; set taxi location
        (tlocation taxi_1 tic)
        (empty taxi_1)

        (tlocation taxi_2 livingstone_tower)
        (empty taxi_2)

        
        
        ;; Simple connections
        ;; Initially going to assume simple binary connections (i.e. a circle)
        ;; liv - royal - gra - tic - barony -- liv
        (connects livingstone_tower royal_college)
        (connects royal_college graham_hills)
        (connects graham_hills tic)
        (connects tic barony_hall)
        (connects barony_hall livingstone_tower)

        (connects royal_college livingstone_tower)
        (connects graham_hills royal_college)
        (connects tic graham_hills)
        (connects barony_hall tic)
        (connects livingstone_tower barony_hall)
        )
    
    (:goal
      (and
       (not (inTaxi scott taxi_1))
       (not (inTaxi rajesh taxi_1))
       (not (inTaxi lingjie taxi_1))
        (not (inTaxi ryan taxi_1))
       (not (inTaxi mark taxi_1))
       (not (inTaxi bain taxi_1))

       (empty taxi_1)
        (empty taxi_2)

       (plocation scott graham_hills)
       (plocation rajesh barony_hall)
       (plocation lingjie livingstone_tower)

       (plocation ryan livingstone_tower)
       (plocation mark graham_hills)
       (plocation bain barony_hall)

       )
      
      )
)
