select P1.Name as ProductName, P2.name as similarproductname
from production.product as P1
inner join production.product as P2
ON P1.productsubcategoryID = P2.productsubcategoryID
where P1.ProductID != P2.ProductID; 