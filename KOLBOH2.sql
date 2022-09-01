



/* ���� ���� Product */

insert into Product
values (1111 ,'Bisli' ,7.9) ,
(1112 ,'Bamba' ,3.9) ,
(1113 ,'TV' ,3199.9) ,
(1114 ,'Pasta' ,11.9) ,
(1115 ,'Toster mesholashim' ,299) ,
(1116 ,'Desk' ,339) ,
(1117 ,'Watch' ,5339) ,
(1118 ,'Sapapa' ,3189.9) ,
(1119 ,'MARS' ,5.9) ,
(1110 ,'Milk' ,7.9)


/* ���� ���� Worker */

insert into Worker
values (2222 ,'Shimon') ,
(3333 ,'Avi') ,
(4444 ,'Shwilo') ,
(5555 ,'Ypssi') ,
(6666 ,'Alex') ,
(7777 ,'Anat') ,
(8888 ,'Rachel') ,
(11111 ,'Aaron the boss') 


/* ���� ���� Orders */

insert into Orders
values (01 ,1111 ,2222 ,7) ,
(02 ,1112 ,3333,17) ,
(03 ,1113 ,4444,6) ,
(04 ,1114 ,5555,712) ,
(05 ,1115 ,2222,12) ,
(06 ,1116 ,6666 ,73) ,
(07 ,1117 ,2222,3) ,
(08 ,1118 ,2222,9) ,
(09 ,1119 ,8888,11) ,
(10 ,1110 ,5555,120) 


/* ���� ����� ������ ���� ���� */

SELECT�Name
FROM�Product
ORDER BY�Name DESC

/* ���� ����� ������ ���� ���� */
SELECT�Name
FROM�Product
GROUP BY Name 

/*  ���� ����� ������ ����� ��� ����� ����� �-50 */

select Product.NAME,Product.Price
from Product
where Price > 50



/* ����� ������ + ������ + ����� ���� �������� �-20% */
select name ,Price ,  Price * 1.2 [With new update price of 20%]
from Product


/* ����� �� ������� ��� ��� ���� */
select DISTINCT name
from Worker


/* ����� �� ������� ��� ��� ���� */
select�name
from�Worker
order by�name desc

/*����� ������, ���� ���� ������� ����� �-10
   ���� �� 3 �������� */

select TOP 3 QUANTITY
from Orders
where QUANTITY > 10
order by�QUANTITY desc


/* �� ����� �� �� ������� ����� ��' 3 ���� - ����� ���� ������ �-10 */
Update Orders set QUANTITY = 10
where ID_W = '4444'
