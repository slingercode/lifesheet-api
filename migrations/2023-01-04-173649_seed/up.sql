-- Your SQL goes here

INSERT INTO categories (category)
VALUES
("mood"),
("sleep");

INSERT INTO question_types (question_type)
VALUES
("text"),
("number"),
("select"),
("boolean");

INSERT INTO questions (category, question_type, key_command, discord, question)
VALUES
("mood", "select", "mood", 1, "How are you feeling today?"),
("sleep", "number", "sleepDuration", 1, "How long did you sleep tonight?"),
("sleep", "select", "sleepQuality", 1, "How was your sleep quality?");

INSERT INTO multiple_answers (question, answer)
VALUES
(1, "Happy, excited, motivated"),
(1, "Good"),
(1, "Meeh"),
(1, "Sad"),
(1, "Anxious"),
(1, "Angry"),
(1, "Unhealthy"),
(1, "A good combination of sad, anxious, etc..."),
(3, "Great! feeling refreshed"),
(3, "Feeling good"),
(3, "Solid, slightly tired"),
(3, "Tired, more bed please"),
(3, "Why are whe here?");
