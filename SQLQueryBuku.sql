SELECT Books.Name, Books.Price , Categories.id, Categories.Name FROM Books 
INNER JOIN Categories ON Books.CategoryId = Categories.id  

SELECT Categories.Name FROM Categories

SELECT Authors.Name FROM Authors

INSERT INTO Books VALUES ('Malin Kundang', 1000, 2, 3)

UPDATE Books SET Price = '500' WHERE Books.Name = 'Malin Kundang'

DELETE FROM Books WHERE Books.Price = 500