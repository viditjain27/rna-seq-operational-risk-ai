CREATE DATABASE biotech_ai_monitor;
USE biotech_ai_monitor;

CREATE TABLE rna_seq_experiments (
    experiment_id INT AUTO_INCREMENT PRIMARY KEY,
    sample_id VARCHAR(50) NOT NULL,
    sample_storage_days INT NOT NULL,
    rin_score DECIMAL(3,2) NOT NULL,
    reagent_age_days INT NOT NULL,
    calibration_gap_days INT NOT NULL,
    room_temp_variance DECIMAL(4,2) NOT NULL,
    operator_experience_years DECIMAL(3,1) NOT NULL,
    previous_operator_failure_rate DECIMAL(4,3) NOT NULL,
    run_duration_minutes INT NOT NULL,
    contamination_flag BOOLEAN NOT NULL,
    outcome BOOLEAN NOT NULL
);
