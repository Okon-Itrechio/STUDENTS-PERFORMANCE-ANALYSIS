Use Itrechio
go
Select * from [Students Performance 1]
--1. What is the distribution of students by gender
Select Gender, count(*) as student_count from [Students Performance]
group by Gender

--2.Does Parental level of education affect students performance
Select Parental_Level_Of_Education,
avg(Math_Score) as avg_math, avg(Reading_Score) as avg_reading, avg(Writing_Score) as avg_writing from [Students Performance]
group by Parental_Level_Of_Education
order by avg_math desc

Select Gender, 
avg(Average) as Overall_Average_Score from [Students Performance 1]
group by Gender

--4. Which race/ethnicity has the highest average scores
Select Race_Ethnicity,
avg(Average) as Overall_Average_Score from [Students Performance 1]
group by Race_Ethnicity
order by Overall_Average_Score desc

--5. Do students with standard lunch perform better than those with free/induced lunch
Select Lunch,
avg(Average) as Overall_Average_Score from [Students Performance 1]
group by Lunch
order by Overall_Average_Score desc

--6. Did students who took test preparation perform better than those who didnt
Select Test_Preparation_Course,
avg(Average) as Overall_Average_Score from [Students Performance 1]
group by Test_Preparation_Course
order by Overall_Average_Score desc

--7. Does test preparation affect genders differently

Select Gender, Test_Preparation_Course,
avg(Average) as Overall_Average_Score from [Students Performance 1]
group by Gender, Test_Preparation_Course
order by Overall_Average_Score desc

-- 8. How many students scored above 90 in all three subjects
select count(*) as Best_Students from [Students Performance 1]
where Math_Score > 90 and Reading_Score > 90 and Writing_Score > 90

--9. How many students are struggling (scores < 50 in any subject)
select count(*) as Poor_Students from [Students Performance 1]
where Math_Score < 50 and Reading_Score < 50 and Writing_Score < 50