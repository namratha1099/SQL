
## SQL Project Documentation

### Overview
This repository contains SQL-based projects showcasing the application of SQL queries in real-world scenarios, including financial portfolio management and healthcare patient management. The goal is to provide a thorough understanding of how SQL is used to manage, retrieve, and analyze data in these domains.

### 1. Introduction to SQL
SQL (Structured Query Language) is the standard language for managing and manipulating relational databases. It enables users to insert, update, delete, and query data stored in tables.
In real-time applications, SQL is widely used in various industries such as finance, healthcare, retail, and more. This repository focuses on showcasing practical SQL use cases in the Financial and **Healthcare** sectors, with examples of queries for data management, analysis, and reporting.

### 2. Project Structure

- **`/financial_domain`**: Contains SQL scripts and database designs related to financial systems.
- **`/healthcare_domain`**: Contains SQL scripts and designs for managing healthcare data.

Each folder is organized with:

- **Schema Design**: SQL files that set up the database schema (table definitions).
- **Sample Data**: SQL files that populate the database with sample data.
- **Queries**: SQL queries that solve specific use cases like portfolio tracking or patient monitoring.
- **Reports**: Output or reports generated from running queries.

---

### **3. Financial Domain: Portfolio Management**

In this section, we implement a portfolio management system using SQL, which tracks stock purchases, sales, and the performance of the portfolio over time.

#### **Use Cases**
1. **Track Stock Purchases and Sales**: Monitor buy and sell transactions for various stocks and calculate the overall portfolio value.
2. **Portfolio Performance**: Analyze portfolio growth or decline using SQL functions like `SUM()`, `AVG()`, and `LAG()` for daily value tracking.
3. **Profit and Loss Calculation**: Calculate profit or loss for each stock based on transactions.

#### **Key Queries**
- Calculate total stock quantity and value.
- Analyze portfolio performance over time using window functions.
- Calculate profit and loss for individual stocks.

> Detailed SQL scripts for these use cases can be found in the `/financial_domain` folder.

---

### **4. Healthcare Domain: Patient Management System**

This section demonstrates how SQL can be used to manage patient data, including tracking visits, diagnoses, treatments, and monitoring chronic diseases.

#### **Use Cases**
1. **Patient Visit Tracking**: Record patient visits, diagnoses, and treatments.
2. **Chronic Disease Monitoring**: Track regular checkups for patients with chronic conditions like diabetes or hypertension.
3. **Medication Adherence**: Monitor patient adherence to prescribed medication.

#### **Key Queries**
- Retrieve patient visit history and treatments.
- List patients with upcoming checkups within the next month.
- Identify patients with low medication adherence.

> Detailed SQL scripts for these use cases can be found in the `/healthcare_domain` folder.

---

### **5. Database Design**

Each domain follows a relational database design, ensuring normalized data structures. The design includes **primary keys**, **foreign keys**, and **constraints** to maintain data integrity and improve query performance. ER diagrams and schema designs are available for each project.

- **Stocks and Transactions**: One-to-many relationship between stocks and transactions.
- **Patients and Visits**: One-to-many relationship between patients and visits, and visits and diagnoses.

---

### **6. Sample Data**

Sample data is provided to simulate real-world scenarios. The data can be inserted into the database using the SQL scripts provided in the `sample_data.sql` file located in each domain's folder.

---

### **7. Running the Project**

To run the queries locally:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/sql-real-time-projects.git
   cd sql-real-time-projects
   ```

2. **Set up the database**:
   Use any SQL database like MySQL, PostgreSQL, or SQLite. Create the tables using the schema files and load the sample data.

3. **Run the queries**:
   Execute the SQL queries in the relevant folders for specific use cases.

---

### **8. Contribution Guidelines**

If you'd like to contribute to this project, feel free to submit a pull request. Make sure your SQL queries are optimized and include proper comments for clarity.

