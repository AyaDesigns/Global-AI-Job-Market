-- =============================================
-- Dashboard 3 : AI Skills & Career Requirements
-- =============================================


-- 1. Average Skills per Job (KPI)

SELECT 
    ROUND(AVG(skill_count), 2) AS Average_Skills_Per_Job
FROM ai_jobs_global;


-- 2. Maximum Skills Required (KPI)

SELECT 
    MAX(skill_count) AS Maximum_Skills_Required
FROM ai_jobs_global;


-- 3. Most In-Demand Skill (KPI)

SELECT TOP 1 
    TRIM(value) AS Most_In_Demand_Skill, 
    COUNT(*) AS Job_Count
FROM dbo.ai_jobs_global
CROSS APPLY STRING_SPLIT(required_skills, '|')
WHERE required_skills IS NOT NULL 
  AND required_skills <> ''
GROUP BY TRIM(value)
ORDER BY Job_Count DESC;

-- 4. Percentage of Jobs with Specified Skills (KPI)

SELECT 
    CAST(
        ROUND(
            COUNT(CASE WHEN required_skills IS NOT NULL AND required_skills <> '' THEN 1 END) * 100.0 / COUNT(*), 
            2
        ) AS DECIMAL(10, 2)
    ) AS Percentage_Jobs_With_Skills
FROM ai_jobs_global;


-- =============================================
-- Business Questions
-- =============================================


-- Q1 — Which skills are most frequently required in AI job postings?

SELECT TOP 10
    TRIM(value) AS skill,
    COUNT(*) AS job_count
FROM ai_jobs_global
CROSS APPLY STRING_SPLIT(required_skills, '|')
WHERE TRIM(value) <> ''
GROUP BY TRIM(value)
ORDER BY job_count DESC;


-- Q2 — Which job titles require the highest average number of skills?

SELECT TOP 10
    job_title,
    ROUND(AVG(skill_count), 2) AS Average_Skills
FROM ai_jobs_global
GROUP BY job_title
ORDER BY Average_Skills DESC;


-- Q3 — How does the average number of required skills vary by experience level?

SELECT
    experience_level,
    ROUND(AVG(skill_count), 2) AS Average_Skills
FROM ai_jobs_global
GROUP BY experience_level
ORDER BY Average_Skills DESC;


-- Q4 — Which skills are most common among Senior-level positions?

SELECT TOP 10 
    TRIM(value) AS Skill, 
    COUNT(*) AS Job_Count
FROM ai_jobs_global
CROSS APPLY STRING_SPLIT(required_skills, '|')
WHERE (experience_level LIKE '%Senior%' OR experience_level LIKE '%SE%' OR is_senior = 1)
  AND required_skills IS NOT NULL 
  AND required_skills <> ''
GROUP BY TRIM(value)
ORDER BY Job_Count DESC;


-- Q5 — Which skills are associated with higher-paying jobs?
SELECT TOP 10
    TRIM(value) AS skill,
    COUNT(*) AS job_count,
    AVG(annual_salary_usd) AS average_salary
FROM ai_jobs_global
CROSS APPLY STRING_SPLIT(required_skills, '|')
WHERE TRIM(value) <> ''
GROUP BY TRIM(value)
HAVING COUNT(*) >= 10
ORDER BY average_salary DESC;

-- Q6 — Do different work arrangements require different numbers of skills?

SELECT
    remote_work,
    ROUND(AVG(skill_count), 2) AS Average_Skills
FROM ai_jobs_global
GROUP BY remote_work
ORDER BY Average_Skills DESC;


-- Q7 — Which job categories require the highest average number of skills?

SELECT
    job_category,
    ROUND(AVG(skill_count), 2) AS Average_Skills
FROM ai_jobs_global
GROUP BY job_category
ORDER BY Average_Skills DESC;