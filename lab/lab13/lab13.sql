.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = "blue" AND pet = "dog";


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color FROM students AS a, students AS b WHERE a.pet = b.pet AND a.song = b.song AND a.time < b.time;


CREATE TABLE sevens AS
  SELECT a.seven FROM students AS a, numbers AS b WHERE a.number = 7 AND a.time = b.time AND b.'7' = 'True';


CREATE TABLE favpets AS
  SELECT pet, COUNT(*) AS cnt FROM students GROUP BY pet ORDER BY cnt DESC LIMIT 10;


CREATE TABLE dog AS
  SELECT pet, COUNT(*) FROM students WHERE pet = "dog" GROUP BY pet;


CREATE TABLE bluedog_agg AS
  SELECT song, COUNT(*) AS cnt FROM bluedog_songs GROUP BY song ORDER BY cnt DESC;


CREATE TABLE instructor_obedience AS
  SELECT seven, instructor, COUNT(*) AS cnt FROM students WHERE seven = '7' GROUP BY instructor;

