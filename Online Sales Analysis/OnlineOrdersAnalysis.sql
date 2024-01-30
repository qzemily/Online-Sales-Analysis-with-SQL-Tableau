-- 1. Rename column and change column type
ALTER TABLE orders
RENAME COLUMN `Order Date` TO OrderDate;

-- 2. Discover rare instances where profit was greater than the amount paid
SELECT OrderID, Profit, Amount
FROM details 
WHERE Profit > Amount;

-- 3. Information on rare order instances
SELECT *
FROM details
INNER JOIN orders ON details.OrderID = orders.OrderID
WHERE details.OrderID IN ('B-25608', 'B-25696', 'B-25756', 'B-25703', 'B-25686') AND Profit > Amount
ORDER BY details.OrderID;

-- 4. Combine tables with inner join to find 5 cities with the most profit
SELECT SUM(Profit) as Profit, City
FROM details
INNER JOIN orders ON details.OrderID = orders.OrderID
GROUP BY City
ORDER BY Profit DESC
LIMIT 5;

-- 5. Combine tables with inner join to get profit by Category
SELECT SUM(Profit) as Profit, Category
FROM details
INNER JOIN orders ON details.OrderID = orders.OrderID
GROUP BY Category
ORDER BY Profit DESC;

-- 6. Find the most common used PaymentMode
SELECT COUNT(PaymentMode) as TransactionNumber, PaymentMode
FROM details
GROUP BY PaymentMode
ORDER BY TransactionNumber DESC;

-- 7. Profit by PaymentMode
SELECT COUNT(PaymentMode) as TransactionNumber, SUM(Profit) as Profit, PaymentMode
FROM details
GROUP BY PaymentMode
ORDER BY TransactionNumber DESC, Profit DESC;

-- 8. Query the day with most profit and the number of orders
SELECT COUNT(details.OrderID) as Orders, STR_TO_DATE(OrderDate, '%d-%m-%Y') as OrderDate, SUM(Profit) as Profit 
FROM details 
INNER JOIN orders ON details.OrderID = orders.OrderID
GROUP BY OrderDate
ORDER BY Profit DESC;

-- 9. Query individual prices and profit per item
SELECT Amount, Quantity, Profit, (Amount/Quantity) as IndividualPrice, (Profit/Quantity) as ProfitPerItem, SubCategory
FROM details 
ORDER BY ProfitPerItem DESC;

-- 10. Query the Customer that provides the most profit 
SELECT CustomerName, MAX(Profit) as Profit
FROM details 
INNER JOIN orders ON details.OrderID = orders.OrderID
GROUP BY CustomerName
ORDER BY Profit DESC;

-- 11. Query the amount of Profits and the amount of Losses 
SELECT CASE WHEN Profit > 0 THEN 'Profit' ELSE 'Loss' END AS ProfitOrLoss,
COUNT(*) AS OrderAmount,
SUM(Profit) as Total
FROM details
GROUP BY ProfitOrLoss;

-- 12. Query profit by city and the percentage of profitable orders
SELECT orders.City, SUM(Profit) as Profit, COUNT(details.OrderID) as Orders,
ROUND(AVG(CASE WHEN Profit > 0 THEN 1 WHEN Profit <= 0 THEN 0 END), 2) as PctProfitableOrders
FROM details 
JOIN orders ON details.OrderID = orders.OrderID
GROUP BY City
ORDER BY Profit DESC;

-- 13. Query the pct of profitable orders by category
SELECT SubCategory, Category, SUM(Profit) as Profit, COUNT(details.OrderID) as Orders,
ROUND(AVG(CASE WHEN Profit > 0 THEN 1 WHEN Profit <= 0 THEN 0 END), 2) as PctProfitableOrders
FROM details 
GROUP BY SubCategory, Category
ORDER BY Profit DESC;

-- 14. Query profit contribution percentage by city
SELECT City, SUM(Profit) as Profit, 
ROUND(((SUM(Profit) / (SELECT SUM(Profit) as TotalProfit FROM details)) * 100), 2) as PctOfTotalProfit
FROM details
JOIN orders ON details.OrderID = orders.OrderID
GROUP BY City
ORDER BY Profit DESC;

