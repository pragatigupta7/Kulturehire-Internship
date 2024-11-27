
create database genz;
use genz;
show tables;
select * from aspirations;
select Gender, COUNT(*)  as count from careeraspirations where Country ="India" group by Gender;
SELECT COUNT(*) * 100.0 / (SELECT COUNT(*) FROM careeraspirations WHERE Country = 'India') AS percentage_interested
FROM careeraspirations WHERE Country = 'India' AND "HigherEdOutsideIndia" LIKE '%Yes%';


SELECT "Career Influence", COUNT(*) AS influence_count FROM careeraspirations WHERE Country = 'India' 
GROUP BY "Career Influence" ORDER BY influence_count DESC LIMIT 6;

SELECT Gender, "Career Influence", COUNT(*) AS influence_count
FROM careeraspirations WHERE Country = 'India' GROUP BY Gender, "Career Influence"
ORDER BY Gender, influence_count DESC;

SELECT 
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM careeraspirations) AS percentage_willing_to_work_3_years
FROM careeraspirations
WHERE "Work3+Years?" LIKE '%Yes%';

SELECT COUNT(*) AS socially_impactful_preference
FROM careeraspirations
WHERE "NoSocialImpact?" = 0;

SELECT Gender, COUNT(*) AS socially_impactful_preference
FROM careeraspirations
WHERE "NoSocialImpact?" = 0
GROUP BY Gender;

SELECT "3yrMinSalary", COUNT(*) AS salary_distribution
FROM careeraspirations
GROUP BY "3yrMinSalary"
ORDER BY salary_distribution DESC;

SELECT "StartSalary", COUNT(*) AS salary_count
FROM careeraspirations
WHERE "StartSalary" IS NOT NULL
GROUP BY "StartSalary"
ORDER BY salary_count DESC;

SELECT 
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM careeraspirations) AS percentage_remote_working
FROM careeraspirations
WHERE "PreferredSetup" LIKE '%Remote%';

SELECT "DailyHours", COUNT(*) AS preference_count
FROM careeraspirations
WHERE "DailyHours" IS NOT NULL
GROUP BY "DailyHours"
ORDER BY preference_count DESC;


SELECT "WorkFrustrations", COUNT(*) AS frustration_count
FROM careeraspirations
WHERE "WorkFrustrations" IS NOT NULL
GROUP BY "WorkFrustrations"
ORDER BY frustration_count DESC;

SELECT Gender, COUNT(*) AS need_count
FROM careeraspirations
WHERE "WorkFrustrations" LIKE '%Work-Life Balance%'
GROUP BY Gender
ORDER BY need_count DESC;

SELECT COUNT(*) AS willing_to_work_abusive_manager
FROM careeraspirations
WHERE "AbusiveManager?" = 'Yes';
SELECT COUNT(*) AS willing_to_work_abusive_manager
FROM careeraspirations
WHERE "AbusiveManager?" = 'Yes';

SELECT "5yrMinSalary", COUNT(*) AS salary_distribution
FROM careeraspirations
WHERE "5yrMinSalary" IS NOT NULL
GROUP BY "5yrMinSalary"
ORDER BY salary_distribution DESC;

SELECT Gender, COUNT(*) AS remote_preference_count
FROM careeraspirations
WHERE "PreferredSetup" LIKE '%Remote%'
GROUP BY Gender
ORDER BY remote_preference_count DESC;

SELECT Gender, "WorkFrustrations", COUNT(*) AS frustration_count
FROM careeraspirations
WHERE "WorkFrustrations" IS NOT NULL
GROUP BY Gender, "WorkFrustrations"
ORDER BY Gender, frustration_count DESC;

SELECT "Happy&Productive", COUNT(*) AS factor_count
FROM careeraspirations
WHERE "Happy&Productive" IS NOT NULL
GROUP BY "Happy&Productive"
ORDER BY factor_count DESC;

SELECT COUNT(*) * 100.0 / (SELECT COUNT(*) FROM careeraspirations) AS percentage_need_sponsorship
FROM careeraspirations
WHERE "HigherEdOutsideIndia" LIKE '%Yes%';

