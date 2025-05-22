-- Inventory Analysis 

-- 1. Total inventory
	select count(Quantity_on_Hand) as Total_Inventory from Inventory;

-- 2. Inventory value based on cost_Amount
	select concat(format(sum(Cost_Amount)/1000,2),'k') as Inventory_Cost from Inventory;


-- 3.Inventory value based on sales_price
	select concat(format(sum(price)/1000,2),'k') as Inventory_Revenue from Inventory;


-- 4.Inventory Health as In_stock,  Out_of_stock, Under_stock
	select i.* ,case 
			when i.Quantity_on_Hand = 0 then"Out of Stock"
			when i.Quantity_on_hand <= t.min_Stock_Quantity then "Under Stock" 
			else "In Stock"
			end as Inventory_Health from inventory i 
			join(select min(Quantity_on_Hand) as min_Stock_Quantity from inventory) t;
 
 
 
 -- 5.Inventory Health wise Qunatity on hand
	select Inventory_Health, count(*) as No_of_Products from(
	select i.* ,case 
			when i.Quantity_on_Hand = 0 then"Out of Stock"
			when i.Quantity_on_hand <= t.min_Stock_Quantity then "Under Stock" 
			else "In Stock"
			end as Inventory_Health from inventory i 
			join(select min(Quantity_on_Hand) as min_Stock_Quantity from inventory) t 
	) as sub  Group by Inventory_Health;
   
   
   --  -------- Sales Analysis   --------
   
-- 1. Total Sales
    select concat(format(sum(sales_amount)/1000000,2) , ' M') as Total_Sales from pointofsale;
    
-- 2. Total Profit
	select concat(format(sum(sales_amount - cost_amount)/10000000,2),' M') as Total_Profit
    from pointofsale;
    
-- 3. Total Sales - MTD(Month-to-date)
	select sum(p.Sales_Amount) as MTD_sales 
    from pointofsale p join sales sa
    on p.Order_Number = sa.Order_Number
    where date_format(sa.date , "%y-%m") = (select date_format(max(sa2.date),"%y-%m") from sales sa2) ;
    
-- 4. Total Sales - QTD(Quarter-to-date)
	select sum(p.Sales_amount) as QTD_sales
    from pointofsale p join sales sa 
    on p.Order_Number = sa.Order_Number
    where year(sa.date) = (select year(max(date)) from sales) and 
		  Quarter(sa.date) = (select quarter(max(date)) from sales);
          
-- MTD and QTD gives same result as last date in given dataset is 06-04-2023  
-- mtd gives upto march sales and Qtd also gives march sales as it is the previous quarter for april

-- 5.  Total  Sales -YTD(Year-to-Date)
	select sum(p.Sales_amount) as YTD_sales
    from pointofsale p join sales sa 
    on p.Order_Number = sa.Order_Number
    where year(sa.date) = (select year(max(date)) from sales);
    
-- 6.Purchase Method Wise Sales
	select s.purchase_method , concat(format(sum(sales_amount)/1000000,2),' M') as Total_Sales from
    sales s left join pointofsale p
    on p.order_number = s.order_number
    group by(purchase_method)
    order by purchase_method;
 
-- 7. Top  5 Store Wise Sales
	select s.Store_Name ,concat(format(sum(sales_amount)/1000,2),' k') as Total_Sales
    from Store s join sales sa on s.store_key = sa.store_key
				 join pointofsale p on sa.order_number = p.order_number
                 group by Store_name
                 order by total_sales desc
                 limit 5;
-- 8.Region Wise Sales
	select s.Store_Region As Region , concat(format(sum(sales_amount)/1000000,2),' M') as Total_Sales
    from Store s join sales sa on s.store_key = sa.store_key
			join pointofsale p on sa.order_number = p.order_number
            group by Region
            order by Total_Sales desc;
                 
-- 9. State Wise Sales
	select s.Store_State as State ,concat(format(sum(sales_amount)/1000,2),' k') as Total_Sales
    from Store s join sales sa on s.store_key = sa.store_key
				 join pointofsale p on sa.order_number = p.order_number
                 group by Store_State
                 order by total_sales desc;

-- 10. Region Wise, State Wise Sales
	select s.Store_Region as Region, s.Store_State as State ,
    concat(format(sum(sales_amount)/1000,2),' k') as Total_Sales
    from Store s join sales sa on s.store_key = sa.store_key
				 join pointofsale p on sa.order_number = p.order_number
                 group by  Store_Region,Store_State
                 order by Region,State,total_sales;


-- 11. Product type Wise Sales
	select s.Product_Type as Product_Category ,concat(format(sum(sales_amount)/1000000,2),' M') as Total_Sales
    from products s join pointofsale p on s.product_key = p.product_key
    group by product_category
    order by total_sales ;
    
-- 12. Each Product Sales
	select s.Product_Name  ,concat(format(sum(sales_amount)/1000,2),' k') as Total_Sales
    from products s join pointofsale p on s.product_key = p.product_key
    group by product_Name
    order by total_sales  desc;
    
-- 13. Daily Sales Trend
	select Date(d.Date) as Sale_Day,count(*) as Total_Sales_Count,sum(p.sales_amount) As Total_Sales_Amount
    from pointofsale p join sales d
    on d.order_number = p.order_number
    group by d.date
    order by sale_Day asc ;
    
-- 14. Month-over-month sales growth
		select date_format(date(d.date),'%y-%m') as Sale_month, sum(p.sales_amount) as Total_Sales,
        lag(sum(p.sales_amount)) over (order by date_format(date(d.date),'%y-%m')) as pr_month_sales,
         concat(round((sum(p.sales_amount) - lag(sum(p.sales_amount)) over (order by date_format(date(d.date),'%y-%m')))
        /lag(sum(p.sales_amount)) over (order by date_format(date(d.date),'%y-%m'))*100, 2 ) ," %")  as Sales_Growth_percentage
        from pointofsale p join sales d on d.Order_Number = p.Order_Number
        group by Sale_month
        order by sale_month;
        
 -- 15. Year-over-year Sales Growth
		select year(date(d.date)) as Sale_year, sum(p.sales_amount) as Total_Sales,
        lag(sum(p.sales_amount)) over (order by year(date(d.date))) as pr_year_sales,
         concat(round((sum(p.sales_amount) - lag(sum(p.sales_amount)) over (order by year(date(d.date))))
        /lag(sum(p.sales_amount)) over (order by year(date(d.date)))*100, 2 ) ," %")  as Sales_Growth_percentage
        from pointofsale p join sales d on d.Order_Number = p.Order_Number
        group by Sale_year
        order by sale_year;
        
 
        
	

  



