# Online Sales: Data Analysis on Sales and Profit Data with SQL & Tableau

## 1. Introduction

### 1.1 Purpose
The purpose of this project is to analyze online sales data and derive insights into the performance of orders, customers, and products. The analysis aims to identify trends, patterns, and factors contributing to profits and losses.

### 1.2 Data Source
The dataset used for this analysis is a combination of two tables: "orders" and "details," found on Kaggle https://www.kaggle.com/datasets/samruddhi4040/online-sales-data.
The orders table contains information about order such as Order ID (primary key), Order Date, CustomerName, State, City.
The details table contains the details of the order such as Order ID (primary key), Profit, Amount, Quantity, Category, Sub-Category, and Payment Mode.
## 2. SQL Queries and Analysis

The queries can be found in the OnlineOrdersAnalysis.sql file and it contains the following queries:

1. [Rename column and change column type](#1-rename-column-and-change-column-type)
2. [Discover rare instances where profit was greater than the amount paid](#2-discover-rare-instances-where-profit-was-greater-than-the-amount-paid)
3. [Information on rare order instances](#3-information-on-rare-order-instances)
4. [Combine tables with inner join to find 5 cities with the most profit](#4-combine-tables-with-inner-join-to-find-5-cities-with-the-most-profit)
5. [Combine tables with inner join to get profit by Category](#5-combine-tables-with-inner-join-to-get-profit-by-category)
6. [Find the most common used PaymentMode](#6-find-the-most-common-used-paymentmode)
7. [Profit by PaymentMode](#7-profit-by-paymentmode)
8. [Query the day with most profit and the number of orders](#8-query-the-day-with-most-profit-and-the-number-of-orders)
9. [Query individual prices and profit per item](#9-query-individual-prices-and-profit-per-item)
10. [Query the Customer that provides the most profit](#10-query-the-customer-that-provides-the-most-profit)
11. [Query the amount of Profits and the amount of Losses](#11-query-the-amount-of-profits-and-the-amount-of-losses)
12. [Query profit by city and the percentage of profitable orders](#12-query-profit-by-city-and-the-percentage-of-profitable-orders)
13. [Query the pct of profitable orders by category](#13-query-the-pct-of-profitable-orders-by-category)
14. [Query profit contribution percentage by city](#14-query-profit-contribution-percentage-by-city)

## 3. Visualization
The Tableau interactive Visualization allows us to see the Total Sales, Total Profit, Total Orders and the Category and city distribution. 
The monthly chart is interative which allows us to see how all these change each month allowing the company to make a more target strategy.
<div class='tableauPlaceholder' id='viz1706634940000' style='position: relative'><noscript><a href='#'><img alt='Online Sales KPI  ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;On&#47;OnlineSalesKPI&#47;Dashboard2&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='OnlineSalesKPI&#47;Dashboard2' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;On&#47;OnlineSalesKPI&#47;Dashboard2&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1706634940000');                    var vizElement = divElement.getElementsByTagName('object')[0];                    if ( divElement.offsetWidth > 800 ) { vizElement.style.width='1024px';vizElement.style.height='795px';} else if ( divElement.offsetWidth > 500 ) { vizElement.style.width='1024px';vizElement.style.height='795px';} else { vizElement.style.width='100%';vizElement.style.height='1477px';}                     var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
https://public.tableau.com/views/OnlineSalesKPI/Dashboard2?:language=en-US&:display_count=n&:origin=viz_share_link

## 4. Conclusion

The analysis of the sales and profit data revealed valuable insights into various aspects of the business. Key findings include the identification of rare instances with profits greater than amounts paid, the discovery of the most profitable cities, and the assessment of profitability across different payment modes. As well as the changes that occur throughout the months. These insights provide a solid foundation for strategic decision-making and further exploration.

## 5. Recommendations

The next steps for this project could include:

- Conducting deeper exploratory analysis on customer segments and product categories by month. Investigate if there are outside causes that make the sales plummet or rise in the different months.
- Implementing predictive modeling for forecasting future profits and sales.
- Collaborating with stakeholders to understand business objectives and tailoring the analysis accordingly.
