-- =============================================
-- Dashboard 2 : Salary & Compensation Analysis
-- =============================================


-- 1. Average Salary (KPI)

SELECT 
    ROUND(AVG(annual_salary_usd), 2) AS Average_Salary
FROM ai_jobs_global;


-- 2. Minimum Salary (KPI)

SELECT 
    MIN(salary_min_usd) AS Minimum_Salary
FROM ai_jobs_global;


-- 3. Maximum Salary (KPI)

SELECT 
    MAX(salary_max_usd) AS Maximum_Salary
FROM ai_jobs_global;


-- 4. Average AI Salary Premium % (KPI)

SELECT 
    ROUND(AVG(ai_salary_premium_pct), 2) AS Average_AI_Salary_Premium
FROM ai_jobs_global;


-- =============================================
-- Business Questions
-- =============================================


-- Q1 — Which AI job titles have the highest average salaries?

SELECT TOP 10
    job_title,
    ROUND(AVG(annual_salary_usd), 2) AS Average_Salary
FROM ai_jobs_global
GROUP BY job_title
ORDER BY Average_Salary DESC;


-- Q2 — How does average salary vary by experience level?

SELECT
    experience_level,
    ROUND(AVG(annual_salary_usd), 2) AS Average_Salary
FROM ai_jobs_global
GROUP BY experience_level
ORDER BY Average_Salary DESC;


-- Q3 — Which countries offer the highest average salaries?

SELECT TOP 10
    country,
    ROUND(AVG(annual_salary_usd), 2) AS Average_Salary
FROM ai_jobs_global
GROUP BY country
ORDER BY Average_Salary DESC;


-- Q4 — Which cities offer the highest average salaries?

SELECT TOP 10
    city,
    ROUND(AVG(annual_salary_usd), 2) AS Average_Salary
FROM ai_jobs_global
GROUP BY city
ORDER BY Average_Salary DESC;


-- Q5 — How does salary differ between different work arrangements?

SELECT
    remote_work,
    ROUND(AVG(annual_salary_usd), 2) AS Average_Salary
FROM ai_jobs_global
GROUP BY remote_work
ORDER BY Average_Salary DESC;


-- Q6 — How does salary vary according to company size?

SELECT
    company_size,
    ROUND(AVG(annual_salary_usd), 2) AS Average_Salary
FROM ai_jobs_global
GROUP BY company_size
ORDER BY Average_Salary DESC;


-- Q7 — Which industries offer the highest average salaries?

SELECT TOP 10
    industry,
    ROUND(AVG(annual_salary_usd), 2) AS Average_Salary
FROM ai_jobs_global
GROUP BY industry
ORDER BY Average_Salary DESC;