DELIMITER $$

CREATE PROCEDURE insert_synthetic_data()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 300 DO
        
        INSERT INTO rna_seq_experiments
        (sample_id, sample_storage_days, rin_score, reagent_age_days, 
         calibration_gap_days, room_temp_variance,
         operator_experience_years, previous_operator_failure_rate,
         run_duration_minutes, contamination_flag, outcome)
         
        VALUES (
            CONCAT('SMP', LPAD(i, 3, '0')),
            FLOOR(1 + RAND() * 30),
            ROUND(5 + RAND() * 5, 2),
            FLOOR(1 + RAND() * 60),
            FLOOR(1 + RAND() * 90),
            ROUND(0.5 + RAND() * 4, 2),
            ROUND(0.5 + RAND() * 10, 1),
            ROUND(0.01 + RAND() * 0.30, 3),
            FLOOR(80 + RAND() * 60),
            IF(RAND() > 0.85, 1, 0),
            IF(RAND() > 0.30, 1, 0)
        );

        SET i = i + 1;

    END WHILE;

END$$

DELIMITER ;
