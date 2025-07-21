Select * from  menu_items;
Select * from  order_details;
Select *
from  order_details od left join menu_items mi
ON od.item_id=mi.menu_item_id;

Select item_name,COUNT(order_details_id) AS num_purchases
from  order_details od left join menu_items mi
ON od.item_id=mi.menu_item_id
group by item_name
order by num_purchases DESC;


Select order_id, SUM(price) AS total_spend
from  order_details od left join menu_items mi
ON od.item_id=mi.menu_item_id
GROUP BY order_id
order by total_spend DESC
LIMIT 5;


Select category, COUNT(item_id) as num_items
from  order_details od left join menu_items mi
ON od.item_id=mi.menu_item_id
where order_id=440
group by category;

Select order_id, category, COUNT(item_id) as num_items
from  order_details od left join menu_items mi
ON od.item_id=mi.menu_item_id
where order_id in (440,2075,1957,330,2675)
group by order_id, category;

