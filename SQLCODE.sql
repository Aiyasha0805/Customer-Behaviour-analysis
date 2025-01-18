SELECT * FROM Customer;

DELETE FROM Customer
WHERE Satisfaction = "";

SELECT * FROM Customer
ORDER BY Total_Spend DESC
LIMIT 10;

SELECT * FROM Customer
ORDER BY Items_Purchased DESC
LIMIT 10;

SELECT Age, AVG(Total_Spend) AS Average_Spend_Amt
FROM Customer
GROUP BY Age
ORDER BY Age;

SELECT Membership_Type, AVG(Total_Spend) AS Avg_Amt_Spent
FROM Customer
Group BY Membership_Type;

SELECT AVG(Last_Purchase) FROM Customer;

SELECT City, SUM(Total_Spend)
FROM Customer
GROUP BY City;

SELECT AVG(Items_Purchased) FROM Customer;

SELECT Discount_Applied, SUM(Total_Spend)
FROM Customer
GROUP BY Discount_Applied;

SELECT Average_Rating, ROUND(AVG(Total_Spend),1)
FROM Customer
GROUP BY Average_Rating
ORDER BY Average_Rating DESC;

SELECT Membership_Type, AVG(Average_Rating)
FROM Customer
Group By Membership_Type
ORDER BY AVG(Average_Rating) DESC;

SELECT Satisfaction, AVG(Last_Purchase)
FROM Customer
GROUP BY Satisfaction
ORDER BY AVG(Last_Purchase);

SELECT City, Satisfaction, COUNT(*)
FROM Customer
GROUP BY City, Satisfaction;

SELECT Age, Satisfaction, COUNT(*)
FROM Customer
GROUP BY Age, Satisfaction;
