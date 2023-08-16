-- 100-average_weighted_score.sql
-- This script creates a stored procedure that computes and stores the average weighted score for a given student.

DELIMITER //
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
BEGIN
  DECLARE total_score FLOAT;
  DECLARE total_weight INT;
  SELECT SUM(c.score * p.weight) / SUM(p.weight) INTO total_score
  FROM corrections c
  JOIN projects p ON c.project_id = p.id
  WHERE c.user_id = user_id;

  UPDATE users SET average_score = total_score WHERE id = user_id;
END;
//
DELIMITER ;
