-- exercicio 1

SELECT COUNT(experiences."endDate") AS currentExperiences FROM experiences;

-- exercicio 2

SELECT educations."userId" as id, COUNT("userId") as educations
FROM educations
GROUP BY "userId";

-- a resoluçao no notion está diferente a ordem dos valores retornados, a resoluçao de lá retorna o mesmo valor e ordem do exercicio
-- anterior, acredito que seja um erro no proprio notion

-- exercicio 3

SELECT u.name as writer, COUNT("writerId") as testimonialCount
FROM testimonials
JOIN users u
ON testimonials."writerId" = u.id
WHERE u.id = 435
GROUP BY u.name;

-- exercicio 4

SELECT MAX(jobs.salary) as "maximumSalary", roles.name AS role
FROM jobs
JOIN roles
ON jobs."roleId" = roles.id
WHERE jobs.active = true
GROUP BY jobs."roleId", role
ORDER BY "maximumSalary" ASC;