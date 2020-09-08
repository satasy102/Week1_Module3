CREATE TABLE orders(
   id INT AUTO_INCREMENT,
   staff VARCHAR(50),
   PRIMARY KEY(id),
   customer_id INT,
   constraint FK_CustomerOrder foreign key (customer_id) REFERENCES customers(id)
);