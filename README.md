# data-analyst-assessment-Nethmi-Sumathipala
Data Analyst Internship Assessment
In Jupyter Notebook, I imported the required libraries, loaded the dataset, and checked for missing values, which were absent. Ensured appropriate data types for each column.

To calculate the total sales for each order, the quantity of each product was multiplied by its corresponding price.

To determine the top 5 products by sales, I followed a systematic approach. Initially, I grouped the dataset by product ID and calculated the total sales for each product by summing up the sales. Then, the products were sorted based on their total sales in descending order. From this sorted list, I selected the top 5 products, representing those with the highest sales figures. For instance, product ID 507 emerged as the highest-selling product, boasting a total sales value of 120. Product IDs 501 and 508 both exhibited total sales figures of 75, thereby sharing the third position in terms of sales performance. 

In analyzing the trend in sales over time, I began by creating a new column "month," where I extracted the month and year from the existing "date" column. Next, I grouped the data by month and calculated the total sales for each month by summing the sales values. Then, I plotted the monthly sales trend using Matplotlib. In examining the monthly sales trend, April 2023 stood out as the peak month in terms of sales, reaching a total of 120. Conversely, May 2023 witnessed a considerable decline in total sales, dropping to 75 from the previous month..

To visualize the top 5 products by total sales, I plotted a bar chart using Matplotlib. As previously mentioned, Product ID 507 emerged as the highest-selling product, with a total sales figure of 120.

To calculate the Average Order Value (AOV), I divided the total revenue by the number of unique orders. Total revenue was obtained by summing the values in the total_sales column, while the number of unique orders was counted using the order_id column. Using these calculations, the AOV was determined to be 60. 

To determine the repeat purchase rate, I calculated the percentage of customers who have made more than one purchase. First, I used value_counts on the customer_id column to get the number of purchases made by each customer. Then, I filtered the customers who have made more than one purchase and counted the total number of unique customers. Finally, I divided the number of repeat customers by the total number of customers and multiplied by 100 to get the percentage.

