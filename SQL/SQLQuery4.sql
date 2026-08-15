-- =============================================
-- Dashboard 4 : AI Job Demand & Market Trends
-- =============================================


-- 1. Average Demand Score (KPI)

SELECT 
    ROUND(AVG(demand_score), 2) AS Average_Demand_Score
FROM ai_jobs_global;


-- 2. Average Demand Growth % (KPI)

SELECT 
    ROUND(AVG(demand_growth_yoy_pct), 2) AS Average_Demand_Growth
FROM ai_jobs_global;


-- 3. Highest Demand Job Role (KPI)

SELECT TOP 1
    job_title,
    ROUND(AVG(demand_score), 2) AS Average_Demand_Score
FROM ai_jobs_global
GROUP BY job_title
ORDER BY Average_Demand_Score DESC;


-- 4. Percentage of LLM Roles (KPI)

SELECT 
    CAST(
        ROUND(
            COUNT(CASE WHEN is_llm_role = 1 THEN 1 END) * 100.0 / COUNT(*), 
            2
        ) AS DECIMAL(10, 2)
    ) AS Percentage_LLM_Roles
FROM dbo.ai_jobs_global;


-- =============================================
-- Business Questions
-- =============================================


-- Q1 — Which AI job titles have the highest demand scores?

SELECT TOP 10
    job_title,
    ROUND(AVG(demand_score), 2) AS Average_Demand_Score
FROM ai_jobs_global
GROUP BY job_title
ORDER BY Average_Demand_Score DESC;


-- Q2 — Which job categories show the highest demand growth?

SELECT
    job_category,
    ROUND(AVG(demand_growth_yoy_pct), 2) AS Average_Demand_Growth
FROM ai_jobs_global
GROUP BY job_category
ORDER BY Average_Demand_Growth DESC;


-- Q3 — Which industries have the highest average demand for AI professionals?

SELECT
    industry,
    ROUND(AVG(demand_score), 2) AS Average_Demand_Score
FROM ai_jobs_global
GROUP BY industry
ORDER BY Average_Demand_Score DESC;


-- Q4 — Which countries have the highest average demand score?

SELECT TOP 10
    country,
    ROUND(AVG(demand_score), 2) AS Average_Demand_Score
FROM ai_jobs_global
GROUP BY country
ORDER BY Average_Demand_Score DESC;


-- Q5 — How does AI job demand vary by experience level?

SELECT
    experience_level,
    ROUND(AVG(demand_score), 2) AS Average_Demand_Score
FROM ai_jobs_global
GROUP BY experience_level
ORDER BY Average_Demand_Score DESC;


-- Q6 — Do LLM-related roles have higher average salaries than non-LLM roles?

SELECT
    CASE
        WHEN is_llm_role = 1 THEN 'LLM Role'
        ELSE 'Non-LLM Role'
    END AS Role_Type,
    ROUND(AVG(annual_salary_usd), 2) AS Average_Salary
FROM ai_jobs_global
GROUP BY is_llm_role
ORDER BY Average_Salary DESC;


-- Q7 — Which job roles have both high demand and high salaries?

SELECT
    job_title,
    COUNT(*) AS job_count,
    AVG(demand_score) AS average_demand_score,
    AVG(annual_salary_usd) AS average_salary
FROM ai_jobs_global
GROUP BY job_title
HAVING AVG(demand_score) >= 90
   AND AVG(annual_salary_usd) >= (
       SELECT AVG(annual_salary_usd)
       FROM ai_jobs_global
   )
ORDER BY average_demand_score DESC,
         average_salary DESC;