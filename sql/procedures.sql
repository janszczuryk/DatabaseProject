DELIMITER $$

CREATE OR REPLACE
PROCEDURE COUNT_AVG_MARKS (IN p_learner_id INT)

BEGIN

    SELECT m.learner_id, SUM(m.value * m.weight)/SUM(m.weight) AS marks_avg, l.name, l.lastname
    FROM marks m
    JOIN learners l 
        ON m.learner_id = l.id
    WHERE m.learner_id = p_learner_id
        AND m.created_at BETWEEN '2021-01-01 00:00:00' AND '2022-12-31 23:59:59';

END $$

DELIMITER ;

