# Welcome to my data portfolio!

This repository is a portfolio of selected personal data-related projects I have completeted in the following areas:
- Data analysis - using SQL and Python
- Data visualization - using Tableau
- Machine Learning - Classification Prediction using Python

This portfolio is still a work in progress, so more projects will be coming soon as I expand/deepen my skillset :)

## I. Data analysis - using SQL

Apart from the SQL projects below, I'm currently taking up an [8-week SQL challenge](https://8weeksqlchallenge.com/). You can check out my progress at my other GitHub repository **[here](https://github.com/lanhoang82/8-Week-SQL-Challenge)**.

### 1. HR Analytics - A more advanced SQL Project 

With a database of 7 tables hosted on PostgreSQL, this SQL project aims to showcase my ability to write more advanced SQL queries. Via pgAdmin 4, I write queries with common types of joins, subqueries, common table expressions (CTEs) and window functions. A toy HR analytics database was employed to practice providing relevant insights and help management to answer questions that would inform personnel and compensation policies, such as:

- How many employees in the company have earned more than the average salary of their respective department?
- What is the geographical distribution of the employees in the company (by city, country or region)? 
- What is the salary range of the employees in the IT department?
- Who is the employee who has been with the company the longest? Who is the most recently joined employee?

This project is ongoing as I practice and improve my SQL skills. New queries uncovering new aspects of the database will continue to be added.

### 1.1. Insights from ESG Indicators - A SQL Project

Situated in a Jupyter notebook in the SQL/ESG folder above, this SQL project aims to put in practice and demonstrate my ability to write basic SQL queries. This is done through obtaining insights from ESG (Environment/Social/Governance) indicators. These insights are intended to help shareholders and investors better understand how these ESG indicators evolve over time and compare companies in the same sector for benchmarking.

The project uses a dummy data set obtained from Tableau Exchange at the following link: https://exchange.tableau.com/fr-FR/products/625. The SQL queries, hosted on SQLite, would help answer the following key business questions:

- Where are we on environmental/social issues/governance?
- Where are we in terms of CO2 emissions?
- How many companies have at least one social policy?
- What is the percentage of women on the board of directors?
- How is my company performing compared to companies in the same industry?

## II. Data visualization - using Tableau
Link to my [Tableau Public profile](https://public.tableau.com/app/profile/lan.hoang6504). This profile is of course a work in progress and new visualizations will be added when timing allows :)

### 1. Netflix Q1 2022 Financial Performance Dashboard

This dashboard was created in early 2022 at the start of my Tableau journey. Inspired by Netflix's news of declining subscribers at the time, I extracted the financial data from Netflix's publicly available financial statements and combined with other toy data/estimates to create a more comprehensive dashboard.

<div class='tableauPlaceholder' id='viz1678706830405' style='position: relative'><noscript><a href='#'><img alt='Netflix Fin Performance Q1 2022 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ne&#47;NetflixQ12022FinancialPerformanceDashboards&#47;NetflixFinPerformanceQ12022&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='NetflixQ12022FinancialPerformanceDashboards&#47;NetflixFinPerformanceQ12022' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ne&#47;NetflixQ12022FinancialPerformanceDashboards&#47;NetflixFinPerformanceQ12022&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div> 

### 2. Marketing Spend Analytics | Leardership Dashboard

Marketing Budget Tracking dashboards for leadership (with toy data). These dashboards were prepared for marketing managers during quarterly review meeting, allowing a static overview of their burn rates and to adapt their business decisions accordingly.

<div class='tableauPlaceholder' id='viz1678708785019' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ma&#47;MarketingBudgetTracking_ManagementReporting_withToyData&#47;Summary&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='MarketingBudgetTracking_ManagementReporting_withToyData&#47;Summary' /><param name='tabs' value='yes' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ma&#47;MarketingBudgetTracking_ManagementReporting_withToyData&#47;Summary&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>               

### 3. Machine Learning - Classification Prediction of Household Income

This project involved data cleaning, analysis with Pandas and data visualization using Matplotlib on 0.5 million records of US Census Bureau in 2020-2021. Predicted income level (high or low) of a household based on demographic predictors, using different classification methods in Scikit-learn such as Logistic Regression, Random Forest, Bagging, etc. and gained an accuracy of 0.85.
