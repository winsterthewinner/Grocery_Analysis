USE grocery_dataset; 

# 1.	Retrieve the total sales for each outlet.
SELECT `Outlet Identifier`, SUM(SALES) 
AS TOTAL_SALES
FROM grocery_dataset
GROUP BY `Outlet Identifier`
ORDER BY TOTAL_SALES DESC;

# 2. Find the top 5 best-selling items based on total sales
SELECT `Item Identifier`, `Item Type`, SUM(SALES) 
AS TOTAL_SALES
FROM grocery_dataset
GROUP BY `Item Identifier`, `Item Type`
ORDER BY TOTAL_SALES DESC
LIMIT 5;

# 3.	Determine the average rating per outlet type
SELECT `Outlet Type`, AVG(Rating) 
AS Average_Rating
FROM grocery_dataset
GROUP BY `Outlet Type`
ORDER BY Average_Rating DESC;

# 4.	Count the number of items available in each item type category.
SELECT `Item Type`, COUNT(`Item Identifier`)
AS Number_of_Items
FROM grocery_dataset
GROUP BY `Item Type`
ORDER BY Number_of_Items DESC;

# 5.	Find the most common outlet size in the dataset.
SELECT `Outlet Size`, COUNT(`Outlet Identifier`)
AS Most_common_Outlet_Size
FROM grocery_dataset
GROUP BY `Outlet Size`
ORDER BY Most_common_Outlet_Size DESC;

# 6.	Find the average item weight for each item type.
SELECT `Item Type`, AVG(`Item Weight`)
AS Ave_Item_Weight
FROM grocery_dataset
GROUP BY `Item Type`
ORDER BY Ave_Item_Weight DESC;

# 7.	Identify the outlet with the highest number of sales transactions
SELECT `Outlet Identifier`, COUNT(`Outlet Identifier`)
AS Total_Transactions
FROM grocery_dataset
GROUP BY`Outlet Identifier`
ORDER BY Total_Transactions DESC;

# 8.	Find the top 3 outlet locations with the highest total sales.
SELECT `Outlet Location Type`, SUM(SALES)
AS Top_3_Total_Sales
FROM grocery_dataset
GROUP BY `Outlet Location Type`
ORDER BY Top_3_Total_Sales DESC
Limit 3;

# 9.	Get the average sales for items with high visibility (above 0.05).
SELECT `Item Type`, `Item Visibility`, AVG(SALES)
AS Ave_Sales
FROM grocery_dataset
GROUP BY `Item Type`, `Item Visibility`
HAVING `Item Visibility` > 0.05
ORDER BY Ave_Sales DESC;

#10.	Find the outlet type with the highest number of unique items sold.
SELECT `Outlet Type`, COUNT(DISTINCT(`Item Identifier`))
AS Unique_Items_Sold
FROM grocery_dataset
GROUP BY `Outlet Type`
ORDER BY Unique_Items_Sold DESC;

# 11.	Compare sales of ‘Low Fat’ vs. ‘Regular’ items.
SELECT `Item Fat Content`, SUM(SALES)
AS Total_Sales
FROM grocery_dataset
GROUP BY `Item Fat Content`
ORDER BY Total_Sales DESC;

# 12.	Find the most frequently occurring item type.
SELECT `Item Type`, COUNT(`Item Type`)
AS Item_Type_Freq
FROM grocery_dataset
GROUP BY `Item Type`
ORDER BY Item_Type_Freq DESC;

# 13.	Identify the highest-rated product category.
SELECT `Item Type`, AVG(Rating)
AS Ave_Rating
FROM grocery_dataset
GROUP BY `Item Type`
ORDER BY Ave_Rating DESC;

# 14.	Retrieve sales for each outlet type and size.
SELECT `Outlet Type`, `Outlet Size`, SUM(SALES)
AS Total_Sales
FROM grocery_dataset
GROUP BY `Outlet Type`, `Outlet Size`
ORDER BY Total_Sales DESC;

# 15.	Identify the store with the lowest average sales per item.
SELECT `Outlet Identifier`, `Item Type`, AVG(SALES)
AS Ave_Sales
FROM grocery_dataset
GROUP BY `Outlet Identifier`, `Item Type`
ORDER BY Ave_Sales;


# 16.	Find items with sales between 100 and 500.
SELECT `Item Identifier`, `Item Type`, SALES
FROM grocery_dataset
WHERE SALES BETWEEN 100 AND 500
ORDER BY SALES DESC;
