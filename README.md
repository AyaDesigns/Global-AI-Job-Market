# 🤖 AI Job Market Analysis

## 📌 Project Overview

The **AI Job Market Analysis** project provides a data-driven analysis of the global AI job market to uncover patterns in **job demand, salaries, required skills, experience levels, industries, locations, and work arrangements**.

The project follows a complete data analytics pipeline, starting with data exploration and cleaning in **Python**, followed by business-question analysis using **SQL Server**, and ending with interactive **Power BI dashboards**.

The main goal is to transform raw job-market data into meaningful insights that can help **job seekers, recruiters, career planners, and market analysts** better understand the AI employment landscape.

---

## 📊 Dataset

The dataset contains **1,500 AI job postings** covering:

* **25 Job Titles**
* **12 Job Categories**
* Countries and cities
* Industries
* Experience levels
* Annual salaries
* Minimum and maximum salary ranges
* Remote work arrangements
* Required skills
* Company size
* AI salary premium
* Demand score
* Demand growth
* LLM-related roles

---

## 🛠️ Tools & Technologies

| Tool                    | Purpose                                                                |
| ----------------------- | ---------------------------------------------------------------------- |
| 🐍 **Python**           | Data exploration, cleaning, validation, transformation & visualization |
| 🗄️ **SQL Server**      | Business-question analysis and KPI calculations                        |
| 📊 **Power BI**         | Interactive dashboards and data visualization                          |
| 📓 **Jupyter Notebook** | Python analysis and documentation                                      |
| 📁 **CSV**              | Cleaned dataset storage                                                |

---

# 🔄 Project Workflow

The project follows this workflow:

**Explore → Clean → Validate → Transform → Visualize → SQL Analysis → Power BI**

### 1. Python Data Analysis

The dataset was loaded and analyzed using Python to:

* Explore the dataset
* Check data types
* Identify missing values
* Detect duplicates
* Analyze unique values
* Validate the data
* Clean and prepare the dataset
* Create meaningful columns
* Generate visualizations

### 2. SQL Analysis

The cleaned dataset was imported into SQL Server and analyzed through business questions.

The SQL analysis uses techniques such as:

* Aggregate Functions
* `GROUP BY`
* `ORDER BY`
* `CASE`
* `JOIN`
* Subqueries
* `STRING_SPLIT`
* Filtering and conditional analysis

The SQL queries were organized according to the four Power BI dashboards.

### 3. Power BI

The SQL analysis was transformed into interactive Power BI dashboards containing:

* KPIs
* Slicers
* Charts
* Visualizations
* Comparative analysis
* Interactive filtering

---

# 📊 Power BI Dashboards

## 1️⃣ AI Job Market Overview

### Objective

Provide an overall view of the AI job market and identify major trends across job roles, categories, locations, industries, experience levels, and work arrangements.

### Key KPIs

* Total Job Postings
* Total Job Roles
* Total Job Categories
* Average Annual Salary

### Key Questions

* What are the most common AI job titles?
* Which job categories have the highest number of postings?
* Which experience levels are most commonly required?
* Which countries and cities have the highest number of opportunities?
* Which industries offer the most AI jobs?
* How are jobs distributed across work arrangements?

---

## 2️⃣ 💰 Salary & Compensation Analysis

### Objective

Analyze salary patterns and understand how compensation varies according to job title, experience, location, company size, industry, and work arrangement.

### Key KPIs

* Average Salary
* Minimum Salary
* Maximum Salary
* Average AI Salary Premium %

### Key Questions

* Which AI job titles have the highest salaries?
* How does salary vary by experience level?
* Which countries and cities offer the highest salaries?
* How does salary differ by work arrangement?
* How does company size affect salary?
* Which industries offer the highest salaries?

---

## 3️⃣ 🧠 AI Skills & Career Requirements

### Objective

Identify the most demanded skills in AI job postings and understand how skill requirements vary across roles, experience levels, salaries, and work arrangements.

### Key KPIs

* Average Skills per Job
* Maximum Skills Required
* Most In-Demand Skill
* Percentage of Jobs with Specified Skills

### Key Questions

* Which skills are most frequently required?
* Which job titles require the highest number of skills?
* How does skill demand vary by experience level?
* Which skills are most common among senior positions?
* Which skills are associated with higher salaries?
* Which job categories require the most skills?

---

## 4️⃣ 📈 AI Job Demand & Market Trends

### Objective

Analyze AI job demand and market trends across roles, categories, industries, countries, and experience levels.

### Key KPIs

* Average Demand Score
* Average Demand Growth %
* Highest Demand Job Role
* Percentage of LLM Roles

### Key Questions

* Which AI job titles have the highest demand scores?
* Which categories have the highest demand growth?
* Which industries have the highest demand?
* Which countries have the highest demand scores?
* How does demand vary by experience level?
* Do LLM roles have higher salaries than non-LLM roles?
* Which roles combine high demand with high salaries?

---

# 💡 Business Value

This project helps answer important questions about the AI job market, including:

* **Where are the best AI job opportunities?**
* **Which AI roles offer the highest salaries?**
* **What skills are most in demand?**
* **How does experience affect salary and demand?**
* **How do company size and work arrangement affect compensation?**
* **Which AI roles combine strong demand with high salaries?**

These insights can support better decisions for **job seekers, recruiters, career planners, and market analysts**.

---

# 📁 Project Structure

```text
AI-Job-Market-Analysis/
│
├── 📂 Dataset/
│   ├── raw_dataset.csv
│   └── cleaned_dataset.csv
│
├── 📂 Python/
│   └── ai_jobs_global_processed.ipynb
│
├── 📂 SQL/
│   ├── SQLQuery1.sql
│   ├── SQLQuery2.sql
│   ├── SQLQuery3.sql
│   └── SQLQuery4.sql
│
├── 📂 PowerBI/
│   └── AI_Job_Market_Dashboard.pbix
│
├── 📂 Visualizations/
│   └── dashboard_screenshots/
│
└── README.md
```

---

# 📈 Dashboard Preview

Add your Power BI dashboard screenshot here:

```markdown
![AI Job Market Dashboard](Visualizations/dashboard_screenshots/dashboard.png)
```

---

# 👩‍💻 Project Team

**Project:** AI Job Market Analysis
**Supervised by:** Eng. Dina Mohsen

---

# 🎯 Conclusion

The **AI Job Market Analysis** project demonstrates how raw job-market data can be transformed into actionable business insights through a complete analytics workflow using **Python, SQL Server, and Power BI**.

By combining data cleaning, SQL analysis, and interactive visualization, the project provides a comprehensive view of **AI job opportunities, compensation, skills, and market demand**.

---

⭐ **If you find this project useful, feel free to explore the analysis and dashboards!**
