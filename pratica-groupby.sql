-- exercicio 1

SELECT COUNT(experiences."endDate") FROM experiences;

-- exercicio 2

SELECT educations."userId" as id, COUNT("userId") as educations
FROM educations
GROUP BY "userId"
ORDER BY id ASC;

-- exercicio 3

SELECT u.name as writer, COUNT("writerId") as testimonialCount
FROM testimonials
JOIN users u
ON testimonials."writerId" = u.id
WHERE u.id = 435
GROUP BY u.name;

-- exercicio 4

SELECT jobs.salary as "maximumSalary", roles.name AS role
FROM jobs
JOIN roles
ON jobs."roleId" = roles.id
WHERE jobs.active = true
ORDER BY jobs.salary ASC;