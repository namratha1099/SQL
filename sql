
SQL Project Documentation

Overview:
This repository contains SQL-based querying, with financial portfolio management and healthcare patient management. The goal is to provide a thorough understanding of how SQL is used to manage, retrieve, and analyze data in these domains.
1. Introduction to SQL:
  SQL (Structured Query Language) is the standard language for managing and manipulating relational databases. It enables users to insert, update, delete, and query data stored in tables.
  In real-time applications, SQL is widely used in various industries such as finance, healthcare, retail, and more. This repository focuses on showcasing practical SQL use cases in the Financial and Healthcare sectors, with examples of queries for data management, analysis, and reporting.
- Schema Design: SQL files that set up the database schema (table definitions).
- Sample Data: SQL files that populate the database with sample data.
- Queries: SQL queries that solve specific use cases like portfolio tracking or patient monitoring.
- Reports: Output or reports generated from running queries.

3. Financial Domain: Portfolio Management
In this section, we implement a portfolio management system using SQL, which tracks stock purchases, sales, and the performance of the portfolio over time.
Use Cases-
1. Track Stock Purchases and Sales: Monitor buy and sell transactions for various stocks and calculate the overall portfolio value.
  SELECT
    stock_symbol,
    SUM(CASE WHEN transaction_type = 'BUY' THEN quantity ELSE -quantity END) AS total_quantity,
    SUM(CASE WHEN transaction_type = 'BUY' THEN quantity * price ELSE -quantity * price END) AS total_value
  FROM
    stock_transactions
  GROUP BY
    stock_symbol;

2. Portfolio Performance: Analyze portfolio growth or decline using SQL functions like `SUM()`, `AVG()`, and `LAG()` for daily value tracking.
  SELECT
    transaction_date,
    stock_symbol,
    SUM(quantity * price) OVER (PARTITION BY stock_symbol ORDER BY transaction_date) AS cumulative_value,
    LAG(SUM(quantity * price) OVER (PARTITION BY stock_symbol ORDER BY transaction_date), 1) AS previous_value,
    (SUM(quantity * price) OVER (PARTITION BY stock_symbol ORDER BY transaction_date) - 
     LAG(SUM(quantity * price) OVER (PARTITION BY stock_symbol ORDER BY transaction_date), 1)) AS daily_change
  FROM
    stock_transactions
  ORDER BY
    transaction_date;
3. Profit and Loss Calculation: Calculate profit or loss for each stock based on transactions.
  SELECT
    stock_symbol,
    SUM(CASE WHEN transaction_type = 'SELL' THEN (price - buy_price) * quantity ELSE 0 END) AS profit_loss
  FROM (
    SELECT
        stock_symbol,
        transaction_type,
        price,
        quantity,
        LAG(price) OVER (PARTITION BY stock_symbol ORDER BY transaction_date) AS buy_price
    FROM
        stock_transactions
  ) AS subquery
WHERE
    transaction_type = 'SELL'
GROUP BY
    stock_symbol;

4. Healthcare Domain: Patient Management System-
This section demonstrates how SQL can be used to manage patient data, including tracking visits, diagnoses, treatments, and monitoring chronic diseases.
Use Cases
1. Patient Visit Tracking: Record patient visits, diagnoses, and treatments.
  SELECT
    patient_id,
    visit_date,
    diagnosis,
    treatment
  FROM
    patient_visits
  WHERE
    patient_id = :patient_id
  ORDER BY
    visit_date DESC;
2. Chronic Disease Monitoring: Track regular checkups for patients with chronic conditions like diabetes or hypertension.
  SELECT
    patient_id,
    next_checkup_date
  FROM
    patient_checkups
  WHERE
    next_checkup_date BETWEEN CURRENT_DATE AND DATE_ADD(CURRENT_DATE, INTERVAL 1 MONTH);
3. Medication Adherence: Monitor patient adherence to prescribed medication.
  SELECT
    patient_id,
    COUNT(*) AS missed_doses
  FROM
    medication_adherence
  WHERE
    adherence_status = 'Missed'
  GROUP BY
    patient_id
  HAVING
    COUNT(*) > :threshold;
5. Database Design-
Each domain follows a relational database design, ensuring normalized data structures. The design includes primary keys, foreign keys, and constraints to maintain data integrity and improve query performance.
- Stocks and Transactions: One-to-many relationship between stocks and transactions.
- Patients and Visits: One-to-many relationship between patients and visits, and visits and diagnoses.

