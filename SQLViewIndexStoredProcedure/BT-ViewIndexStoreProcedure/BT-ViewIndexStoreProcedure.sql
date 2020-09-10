ALTER TABLE products add index idx_productCode(productCode);

EXPLAIN SELECT * FROM products WHERE productCode=2;

CREATE VIEW products_views AS
SELECT productCode, productName, productPrice, productStatus
FROM  products;

SELECT * FROM products_views;

CREATE OR REPLACE VIEW products_views AS
SELECT productCode, productName, productPrice, productStatus
FROM  products
WHERE productName='hao hao';

SELECT * FROM products_views;

DROP VIEW products_views;

DELIMITER //

CREATE PROCEDURE findAllProducts()

BEGIN

  SELECT * FROM products;

END //

DELIMITER ;

CALL findAllProducts();

DELIMITER //

CREATE PROCEDURE addNewProduct(
IN in_productCode VARCHAR(15),
IN in_productName VARCHAR(45),
IN in_productPrice VARCHAR(45),
IN in_productAmount INT,
IN in_productDescription VARCHAR(100),
IN in_productStatus BIT(1)
)

BEGIN

  INSERT INTO products
    (productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES
    (in_productCode, in_productName, in_productPrice, in_productAmount, in_productDescription, in_productStatus);
  

END //

DELIMITER ;

CALL addNewProduct('cc2020','coca','7000',100,'nuoc ngot',1);

DELIMITER //

CREATE PROCEDURE editProduct(
IN productID INT,
IN in_productCode VARCHAR(15),
IN in_productName VARCHAR(45),
IN in_productPrice VARCHAR(45),
IN in_productAmount INT,
IN in_productDescription VARCHAR(100),
IN in_productStatus BIT(1)
)

BEGIN

  UPDATE products 
  SET productCode=in_productCode,
   productName=in_productName, 
   roductPrice=in_productPrice, 
   productAmount=in_productAmount, 
   productDescription=in_productDescription, 
   productStatus=in_productStatus;
  
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deleteProduct(
IN productID INT
)

BEGIN

  DELETE  FROM products WHERE id=productID;
  
END //

DELIMITER ;
