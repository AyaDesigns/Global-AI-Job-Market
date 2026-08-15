-- =============================================
-- Dashboard 1 : AI Job Market Overview
-- =============================================


-- 1. Total Job Postings (KPI)

SELECT COUNT(*) AS Total_Job_Postings
FROM ai_jobs_global;


-- 2. Total Job Roles (KPI)

SELECT COUNT(DISTINCT job_title) AS Total_Job_Roles
FROM ai_jobs_global;


-- 3. Total Job Categories (KPI)

SELECT COUNT(DISTINCT job_category ) AS Total_Job_Categories
FROM ai_jobs_global;


-- 4. Average Annual Salary (KPI)

SELECT 
    ROUND(AVG(annual_salary_usd), 2) AS Average_Annual_Salary
FROM ai_jobs_global;


-- =============================================
-- Business Questions
-- =============================================


-- Q1 — What are the most common AI job titles?

SELECT TOP 10
    job_title,
    COUNT(*) AS Job_Count
FROM ai_jobs_global
GROUP BY job_title
ORDER BY Job_Count DESC;


-- Q2 — Which job categories have the highest number of job postings?

SELECT
    job_category,
    COUNT(*) AS Job_Count
FROM ai_jobs_global
GROUP BY job_category
ORDER BY Job_Count DESC;


-- Q3 — Which experience levels are most commonly required?

SELECT
    experience_level,
    COUNT(*) AS Job_Count
FROM ai_jobs_global
GROUP BY experience_level
ORDER BY Job_Count DESC;


-- Q4 — Which countries have the highest number of AI job opportunities?

SELECT TOP 10
    country,
    COUNT(*) AS Job_Count
FROM ai_jobs_global
GROUP BY country
ORDER BY Job_Count DESC;


-- Q5 — Which cities have the highest number of AI job postings?

SELECT TOP 10
    city,
    COUNT(*) AS Job_Count
FROM ai_jobs_global
GROUP BY city
ORDER BY Job_Count DESC;


-- Q6 — Which industries offer the highest number of AI job opportunities?

SELECT
    industry,
    COUNT(*) AS Job_Count
FROM ai_jobs_global
GROUP BY industry
ORDER BY Job_Count DESC;


-- Q7 — How are AI job opportunities distributed across different work arrangements?

SELECT
    remote_work,
    COUNT(*) AS Job_Count
FROM ai_jobs_global
GROUP BY remote_work
ORDER BY Job_Count DESC;