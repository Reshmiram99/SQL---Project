-- Step 1: Create the Sales database
CREATE DATABASE Sales;
-- Step 2: Create the Orders table with constraints
USE Sales;

CREATE TABLE Orders (
    Order_Id INT AUTO_INCREMENT,
    Customer_name VARCHAR(100) NOT NULL,
    Product_Category VARCHAR(50) NOT NULL,
    Ordered_item VARCHAR(100) NOT NULL,
    Contact_No VARCHAR(15) NOT NULL,
    PRIMARY KEY (Order_Id),
    UNIQUE (Contact_No)
);
desc orders;

-- Step 3: Add the order_quantity column to the Orders table
ALTER TABLE Orders 
ADD order_quantity INT NOT NULL;
 desc orders;
 
 -- Step 4: Rename the Orders table to sales_orders
ALTER TABLE Orders 
RENAME TO sales_orders;

-- Step 5: Insert 10 rows into the sales_orders table
INSERT INTO sales_orders (Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity) 
VALUES
('Arun', 'Electronics', 'Smartphone', '1234567890', 2),
('Dhanu', 'Books', 'Fiction Novel', '9876543210', 1),
('kevin', 'Home Appliances', 'Microwave', '1234509876', 1),
('Manu', 'Clothing', 'Jacket', '4567890123', 3),
('Evan ', 'Electronics', 'Laptop', '7890123456', 1),
('Krishna', 'Books', 'Science Textbook', '1357902468', 2),
('George ', 'Furniture', 'Office Chair', '2468135790', 1),
('Hannah ', 'Clothing', 'T-shirt', '1122334455', 5),
('Anu', 'Electronics', 'Headphones', '9988776655', 2),
('Adhi', 'Home Appliances', 'Blender', '8877665544', 1);

-- Step 6: Retrieve Customer_name and Ordered_item from the sales_orders table
select *from sales_orders;

SELECT Customer_name, Ordered_item 
FROM sales_orders;

-- Step 7: Update the Ordered_item for a specific row
UPDATE sales_orders 
SET Ordered_item = 'Tablet' 
WHERE Order_Id = 1;


desc sales_orders;

-- Step 8: Delete the sales_orders table from the database
DROP TABLE sales_orders;
