/*Query for question1*/
create table supplier (SUPP_ID int primary key, SUPP_NAME varchar(50) not null, SUPP_CITY varchar(50) NOT NULL, SUPP_PHONE varchar(50) NOT NULL);
create table customer (CUS_ID int primary key, CUS_NAME varchar(20) not null, CUS_PHONE varchar(10) not null, CUS_CITY varchar(30) not null, CUS_GENDER char);
create table category (CAT_ID int primary key, CAT_NAME varchar(20) not null);
create table product(PRO_ID int primary key, PRO_NAME varchar(20) not null default 'Dummy',PRO_DESC varchar(60), CAT_ID int, foreign key(CAT_ID) references category(CAT_ID));
create table supplier_pricing (PRICING_ID int primary key, PRO_ID int, foreign key(PRO_ID) references product(PRO_ID), SUPP_ID int, foreign key(SUPP_ID) references supplier(SUPP_ID), SUPP_PRICE int);
create table `order` (ORD_ID int primary key, ORD_AMOUNT int not null, ORD_DATE date not null, CUS_ID int, foreign key(CUS_ID) references customer(CUS_ID), PRICING_ID int, foreign key(PRICING_ID) references supplier_pricing(PRICING_ID));
create table rating (RAT_ID int primary key, ORD_ID int, foreign key(ORD_ID) references `order`(ORD_ID),RAT_RATSTARS int not null);

/*Query for question2*/
insert into supplier(SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) values (1, 'Rajesh Retails', 'Delhi', '1234567890');
 insert into supplier(SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) values (2, 'Appario Ltd', 'Mumbai', '2589631470');
 insert into supplier(SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) values (3, 'Knome products', 'Banglore', '9785462315');
 insert into supplier(SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) values (4, 'Bansal Retails', 'Kochi', '8975463285');
 insert into supplier(SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) values (5, 'Mittal Ltd.', 'Lucknow', '7898456532');
 
 insert into customer(CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) values (1, 'AAKASH', '9999999999', 'DELHI', 'M');
 insert into customer(CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) values (2, 'AMAN', '9785463215', 'NOIDA', 'M');
 insert into customer(CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) values (3, 'NEHA', '9999999999', 'MUMBAI', 'F');
 insert into customer(CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) values (4, 'MEGHA', '9994562399', 'KOLKATA', 'F');
 insert into customer(CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) values (5, 'PULKIT', '7895999999', 'LUCKNOW', 'M');
 
 insert into category(CAT_ID, CAT_NAME) values (1, 'BOOKS');
 insert into category(CAT_ID, CAT_NAME) values (2, 'GAMES');
 insert into category(CAT_ID, CAT_NAME) values (3, 'GROCERIES');
 insert into category(CAT_ID, CAT_NAME) values (4, 'ELECTRONICS');
 insert into category(CAT_ID, CAT_NAME) values (5, 'CLOTHES');
 
 insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values(1, 'GTA V', 'Windows 7 and above with i5 processor and 8GB RAM', 2);
 insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values(2, 'TSHIRT', 'SIZE-L with Black, Blue and White variations', 5);
 insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values(3, 'ROG LAPTOP', 'Windows 10 with 15inch screen, i7 processor, 1TB SSD', 4);
 insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values(4, 'OATS', 'Highly Nutritious from Nestle', 3);
 insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values(5, 'HARRY POTTER', 'Best Collection of all time by J.K Rowling', 1);
 insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values(6, 'MILK', '1L Toned MIlk', 3);
 insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values(7, 'Boat Earphones', '1.5Meter long Dolby Atmos', 4);
 insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values(8, 'Jeans', 'Stretchable Denim Jeans with various sizes and color', 5);
 insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values(9, 'Project IGI', 'compatible with windows 7 and above', 2);
 insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values(10, 'Hoodie', 'Black GUCCI for 13 yrs and above', 5);
 insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values(11, 'Rich Dad Poor Dad', 'Written by Robert Kiyosaki', 1);
 insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values(12, 'Train Your Brain', 'By Shireen Stephen', 1);
 
 insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values(1,1,2,1500);
 insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values(2,3,5,30000);
 insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values(3,5,1,3000);
 insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values(4,2,3,2500);
 insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values(5,4,1,1000);
 
 
 
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(101,1500,'2021-10-06',2,1);
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(102,1000,'2021-10-12',3,5);
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(103,30000,'2021-09-16',5,2);
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(104,1500,'2021-10-05',1,1);
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(105,3000,'2021-08-16',4,3);
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(106,1450,'2021-08-18',1,9);
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(107,789,'2021-09-01',3,7);
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(108,780,'2021-09-07',5,6);
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(109,3000,'2021-00-10',5,3);
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(110,2500,'2021-09-10',2,4);
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(111,1000,'2021-09-15',4,5);
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(112,789,'2021-09-16',4,7);
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(113,31000,'2021-09-16',1,8);
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(114,1000,'2021-09-16',3,5);
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(115,3000,'2021-09-16',5,3);
 insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) values(116,99,'2021-09-17',2,14);
 

insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(1,101,4);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(2,102,3);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(3,103,1);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(4,104,2);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(5,105,4);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(6,106,3);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(7,107,4);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(8,108,4);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(9,109,3);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(10,110,5);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(11,111,3);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(12,112,4);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(13,113,2);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(14,114,1);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(15,115,1);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values(16,116,0);

/*Query for question 3*/
select CUS_GENDER, count(*) from customer where CUS_ID in (select CUS_ID from `order` where ORD_AMOUNT>=3000) group by CUS_GENDER;

/*Query for question 4*/
select O.*, P.PRO_NAME FROM `order` O, product P, supplier_pricing S
 where O.CUS_ID=2 
 AND O.PRICING_ID=S.PRICING_ID 
 AND S.PRO_ID= P.PRO_ID;
 
 /*Query for question 5*/
 select s.SUPP_NAME, count(p.PRO_NAME) as product_count from supplier as s inner join supplier_pricing as sp on s.SUPP_ID=sp.SUPP_ID
inner join product as p on p.PRO_ID=sp.PRO_ID group by s.SUPP_NAME having count(p.PRO_NAME)>1;

/*Query for question 6*/
select p.PRO_NAME, min(sp.SUPP_PRICE), sp.SUPP_ID from product as p inner join supplier_pricing as sp on p.PRO_ID=sp.PRO_ID
group by p.PRO_ID;

/*Query for question 7*/
select PRO_ID, PRO_NAME from product where PRO_ID in (select PRO_ID from supplier_pricing where PRICING_ID in (select PRICING_ID from `order` where ORD_DATE > '2021-10-05'));

/*Query for question 8*/
SELECT CUS_NAME,CUS_GENDER from customer where CUS_NAME like  'a%' or CUS_NAME like  '%a';

/*Query for question 9*/
select `order`.PRICING_ID, avg(rating.RAT_RATSTARS) as rating, case 
when avg(rating.RAT_RATSTARS)=5 then 'Excellent Service'
when avg(rating.RAT_RATSTARS)>4 then 'Good Service'
when avg(rating.RAT_RATSTARS)>2 then 'Average Service'
else 'Poor Service' end as Type_of_Service from `order` 
inner join rating where `order`.ORD_ID=rating.ORD_ID group by `order`.PRICING_ID;
