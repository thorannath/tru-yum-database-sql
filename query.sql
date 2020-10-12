use TRUYUM;
insert into menu_items(item_name,price,active_status,date_of_launch,category,free_delivery,item_id) 
values ('SANDWICH', 99.00,'YES','2017/03/15','MAINCOURSE','YES',01),('burger', 99.00,'YES','2017/03/15','MAINCOURSE','YES',02),('choco', 99.00,'YES','2017/03/15','MAINCOURSE','YES',03),('breadjam', 99.00,'YES','2017/03/15','MAINCOURSE','YES',04);
insert into  users(user_id,user_name) 
values (1,'sam'),(2,'ram'),(3,'sham');
insert into cart(user_id,item_id,cart_id)
values (1,1,1),(2,2,2);

SELECT * FROM menu_items;
select * from menu_items where date_of_launch<now() and active_status='YES';
SELECT * from menu_items where item_id=1;
update menu_items
set item_name = 'bun'
where item_id=1;
select m.item_name ,c.user_id from menu_items as m join cart as c
on m.item_id=c.item_id 
where m.item_id=1;
select sum(m.price) from menu_items as m join cart as c
on m.item_id=c.item_id;

delete from cart where item_id=2;



