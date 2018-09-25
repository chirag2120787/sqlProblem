CREATE TABLE price_log (
    id int,
    advertiser_id int,
    price int,
    err_code varchar(255) 
);

INSERT INTO price_log(id,advertiser_id,price,err_code)
VALUES 
   (1,1234,null,'ADV_ERROR'),
   (2,2345,100,null),
   (3,1234,105,null);

SELECT * FROM price_log WHERE err_code LIKE "%ADV_ERROR%" GROUP BY advertiser_id; 