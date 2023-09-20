-- 2. What was the Average GPA of students that applied to Standford?

select  AVG(GPA)
  from Student
  JOIN Applications 
  ON Applications.Student_id = Student.student_id
  where Applications.college_name = 'Stanford'
;

----
-- 3. Which students did not apply to any colleges?
select * 
  from Student
  where student_id  not in
    (SELECT student_id from Applications)
;

-- 4. For each student, list their name, GPA and how many colleges they applied and how many colleges accepted them?


WITH AcceptList
  as (select DISTINCT student_id
      , college_name, decision
    from Applications where decision = 'Y')
, AppliedMajor as
  (select * , 
  (college_name|| major) college_major 
  from Applications )
select Student.student_id
  , Student.student_name
  , Student.GPA
  , count(DISTINCT(Applications.college_name)) as  Applied
  , count(college_major.college_major) as AppliedMajor
  ,  count(DISTINCT(AcceptList.college_name)) AS YesColleges
  FROM Student 
JOIN Applications
 ON Student.student_id = Applications.student_id
JOIN AcceptList 

-- 10. Which is the most popular major to applied to?

select major , count(*)
From Applications
GROUP BY major
order by count(*) desc
; 

-- 11. Which is the least popular degree to applied to?

select major , count(*)
From Applications
GROUP BY major
order by count(*) asc
; 

-- 13. Which student came from the smallest high school?


select student_id, student_name
  ,sizeHS 
from Student
order by sizeHS asc
;

-- 14
select student_id, student_name
  ,sizeHS 
from Student
order by sizeHS desc
;
