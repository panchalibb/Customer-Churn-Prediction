# Customer-Churn-Prediction

This project focuses on predicting customer churn using machine learning techniques, alongside SQL-based data analysis. The goal is to identify at-risk customers and provide data-driven recommendations to improve customer retention.

## Objective

To develop a predictive model that can identify customers who are likely to churn and generate actionable business insights to reduce customer attrition.

## Tools and Technologies Used

* Python (Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn)
* SQL (for data extraction and preprocessing)
* Jupyter Notebook
* Excel (for exploratory review)
* Microsoft Word (for the business report)

## Dataset Overview

* Number of records: 7,043
* Target variable: `Churn`
* Key features include: `tenure`, `MonthlyCharges`, `Contract`, `InternetService`, `TechSupport`, `PaymentMethod`, and others.


## Methodology

1. **SQL Analysis**: Preliminary data exploration and summarization using SQL queries.
2. **Data Cleaning**: Handling missing values, converting data types, and transforming categorical variables.
3. **Exploratory Data Analysis**: Analyzing distributions, correlations, and churn patterns.
4. **Feature Engineering**: Creating tenure groups, encoding categorical variables, and selecting relevant features.
5. **Model Development**: Building a Random Forest Classifier for churn prediction.
6. **Model Evaluation**: Measuring performance using Accuracy, Precision, Recall, and ROC-AUC score.
7. **Business Insights**: Identifying key churn drivers and suggesting mitigation strategies.
8. **Reporting**: Delivering a structured business report outlining insights and recommendations.
   
## Model Performance

* Model: Random Forest Classifier
* Accuracy: 79%
* Precision: 74%
* Recall: 66%
* ROC-AUC Score: 83%

## Key Findings

* Customers with month-to-month contracts are more likely to churn.
* High churn is associated with low tenure and high monthly charges.
* Customers without services like tech support or online security have higher churn rates.

## Business Recommendations

* Offer loyalty benefits to new and short-tenure customers.
* Promote long-term contract plans.
* Encourage adoption of value-added services such as tech support.
* Provide discounts or offers for customers using electronic payment methods.

## Deliverables

* Cleaned and analyzed dataset
* Machine learning model for churn prediction
* Jupyter notebook with code and visualizations
* Business report summarizing insights and recommendations
* SQL queries used for initial analysis
