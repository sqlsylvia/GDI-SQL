-- Source for database in 
-- * https://www.db-fiddle.com/f/uD7noyNmyBVFEgbQJZvdyc/0 
-- * https://replit.com/@sqlSylvia/GDI-SQLIntro 
CREATE TABLE College 
   (college_name text
   , state char(2)
   , enrollment int);

INSERT INTO College VALUES
  ('Stanford', 'CA', 15000),
  ('Berkeley', 'CA', 36000),
  ('MIT', 'MA', 10000),
  ('Cornell', 'NY', 21000)
;

CREATE TABLE Student 
   (student_id smallint
   , student_name text
   , GPA decimal(2,1)
   , sizeHS int);

INSERT INTO Student VALUES
  (123, 'Amy', 3.9, 1000),
  (234, 'Bob', 3.6, 1500),
  (345, 'Craig', 3.5, 500),
  (456, 'Doris', 3.9, 1000),
  (567, 'Edward', 2.9, 2000),
  (678, 'Fay', 3.8, 200),
  (789, 'Gary', 3.4, 800),
  (987, 'Helen', 3.7, 800), 
  (876, 'Irene', 3.9, 400),
  (765, 'Jay', 2.9, 1500),
  (654, 'Amy', 3.9, 1000),
  (543, 'Craig', 3.4, 2000)
  ;

CREATE TABLE Applications 
  (student_id smallint
  , student_name text
  , college_name text
  , major text
  , decision char(1));

INSERT INTO Applications VALUES
  (123, 'Amy', 'Stanford', 'CS', 'Y'),
  (123, 'Amy', 'Stanford', 'EE', 'N'),
  (123, 'Amy', 'Berkeley', 'CS', 'Y'),
  (123, 'Amy', 'Cornell', 'EE', 'Y'),
  (234, 'Bob', 'Berkeley', 'biology', 'N'),
  (345, 'Craig', 'MIT', 'bioengineering', 'Y'),
  (345, 'Craig', 'Cornell', 'bioengineering', 'N'),
  (345, 'Craig', 'Cornell', 'CS', 'Y'),
  (345, 'Craig', 'Cornell', 'EE', 'N'),
  (678, 'Fay', 'Stanford', 'history', 'Y'),
  (987, 'Helen', 'Stanford', 'CS', 'Y'),
  (987, 'Helen', 'Berkeley', 'CS', 'Y'),
  (876, 'Irene', 'Stanford', 'CS', 'N'),
  (876, 'Irene', 'MIT', 'biology', 'Y'),
  (876, 'Irene', 'MIT', 'marine biology', 'N'),
  (765, 'Jay', 'Stanford', 'history', 'Y'),
  (765, 'Jay', 'Cornell', 'history', 'N'),
  (765, 'Jay', 'Cornell', 'psychology', 'Y'),
  (543, 'Craig', 'MIT', 'CS', 'N')
  ;
