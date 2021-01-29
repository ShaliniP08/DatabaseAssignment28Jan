use WFA3DotNet
--Q3 Creation of Table with constraints 

--1.Create a table Product as per the following specifications. 

CREATE TABLE Product (
ProductId int not null identity(101,1),
Descriptions varchar(30) UNIQUE not null,
SetQty int not null 
CHECK (SetQty=1 OR SetQty =5 OR SetQty=10) 
DEFAULT 1,
Rate DECIMAL(10,2) null 
CHECK (Rate >=51  AND Rate <=5000)
)

SELECT * FROM Product

--2. Insert 20 records in the above Product table 

INSERT into Product values('Vanilla',10,3777.89)
INSERT into Product values('Chocolate',1,2300.40)
INSERT into Product values('Black Currant',10,330.50)
INSERT into Product values('ButterScotch',5,899.40)
INSERT into Product values('Cookies & Cream',1,2989.10)
INSERT into Product values('Mint Chocolate Chip',5,2870.33)
INSERT into Product values('Strawberry',10,1955.99)
INSERT into Product values('Mango',5,1736.56)
INSERT into Product values('Bubble Gum',1,2203.44)
INSERT into Product values('Snicker Bash',5,1785.21)
INSERT into Product values('Caramel Apple',10,1830.66)
INSERT into Product values('Cotton Candy',10,1786.34)
INSERT into Product values('Hazelnut',1,3835.20)
INSERT into Product values('Red Velvet',1,1399.56)
INSERT into Product values('Kiwi Delight',5,823.76)
INSERT into Product values('Cherry Macaron',1,555.55)
INSERT into Product values('Black Walnut',5,3204.10)
INSERT into Product values('Black Raspberry',5,2060.98)
INSERT into Product values('Coconut',5,2083.82)
INSERT into Product values('Nutty Fudge',5,903.21)

--3. Update all the rates with 10% rate hike. 

UPDATE Product 
SET Rate = 1.1 * Rate

--4. Delete last record by providing the ProductID. 

DELETE FROM Product 
WHERE ProductId=120

--5. Alter the above table and add the following column. 
ALTER TABLE Product 
ADD MarginCode char(1) 
CHECK (MarginCode='A' OR MarginCode ='B' OR MarginCode=null)

--6. Update few records to set MarginCode to A and some records MarginCode to B 
UPDATE Product 
SET MarginCode = 'A'
WHERE ProductId>115

UPDATE Product 
SET MarginCode = 'A'
WHERE ProductId=112

UPDATE Product 
SET MarginCode = 'B'
WHERE ProductId <108

UPDATE Product 
SET MarginCode = 'B'
WHERE ProductId=114

--7. Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1. 
UPDATE Product 
SET SetQty=10 
WHERE (MarginCode ='A' AND SetQty=1)


