-- This file should undo anything in `up.sql`

SET FOREIGN_KEY_CHECKS = 0; 

TRUNCATE TABLE multiple_answers;
TRUNCATE TABLE questions;
TRUNCATE TABLE question_types;
TRUNCATE TABLE categories;

SET FOREIGN_KEY_CHECKS = 1; 
