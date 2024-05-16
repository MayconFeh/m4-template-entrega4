SELECT * FROM books;


SELECT * FROM books 
JOIN books_categories ON books."id" = books_categories."bookId" 
JOIN categories ON categories."id" = books_categories."categoryId" 
WHERE categories."name" = 'Fantasia';


SELECT books."id" AS "bookId", 
books."name" AS "bookName",
books."pages" AS "bookPages", 
categories."name" AS "categoryName" 
FROM books 
JOIN books_categories ON books."id" = books_categories."bookId" 
JOIN categories ON categories."id" = books_categories."categoryId";


SELECT authors."name" AS "authorName",
authors."bio" AS "authorBio", 
books."id" AS "bookId",
books."name" AS "bookName",
books."pages" AS "bookPages" 
FROM authors JOIN books ON authors."id" = books."authorId" WHERE authors."name" = 'J. K. Rowling';