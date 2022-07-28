-- Exercício 1

SELECT COUNT(experiences."endDate") AS "currentExperiences"
FROM experiences


-- Exercício 2

SELECT users.id, COUNT(educations.id) AS "educations"
FROM users
JOIN educations ON educations."userId"=users.id
GROUP BY users.id

-- Exercício 3

SELECT users.name AS "writer", COUNT(testimonials.id) AS "testimonialsCount"
FROM users
JOIN testimonials ON testimonials."writerId"=users.id
WHERE users.id =435
GROUP BY users.name

-- Exercício 4

SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS "role"
FROM jobs
JOIN roles ON jobs."roleId"=roles.id
WHERE active =true
GROUP BY roles.name 

-- BONUS

SELECT schools.name AS "school", 
courses.name AS "course",
COUNT(educations."userId") AS "studentsCount",
educations.status AS "role"
FROM educations
JOIN schools ON educations."schoolId"=schools.id
JOIN courses ON educations."courseId"=courses.id
WHERE educations.status ='ongoing' OR educations.status ='finished'
GROUP BY schools.name,courses.name,educations.status
ORDER BY "studentsCount"
DESC 
LIMIT 3