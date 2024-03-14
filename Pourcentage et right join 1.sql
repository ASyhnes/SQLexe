SELECT productName, quantitevendue,
       quantitevendueviaoffrespeciale,
       (quantitevendueviaoffrespeciale * 100.0 / quantitevendue) AS pourcentageventeviaoffre
FROM (
    SELECT production.name AS productName,
           COALESCE(SUM(sales.orderqty), 0) AS quantitevendue,
           SUM(CASE WHEN sales.specialofferid = 1 THEN 0 ELSE sales.orderqty END) AS quantitevendueviaoffrespeciale
    FROM sales.salesorderdetail AS sales
    RIGHT JOIN production.product AS production ON sales.productid = production.productid
    GROUP BY production.name
) AS subquery
ORDER BY quantitevendue DESC
LIMIT 100;
