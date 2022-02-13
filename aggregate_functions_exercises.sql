--  print the number of books in the database
SELECT COUNT(*) FROM books;

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

SELECT SUM(stock_quantity) FROM books;

SELECT author_fname, author_lname, AVG(released_year) FROM books GROUP BY author_lname, author_fname;

-- get the full name of the author who wrote the longest book
-- use subquery
SELECT CONCAT(author_fname, ' ', author_lname) AS 'author_fullname' FROM books
WHERE pages = (SELECT MAX(pages) FROM books);
-- or use order by and limit to 1
SELECT CONCAT(author_fname, ' ', author_lname) AS 'author_fullname' FROM books
ORDER BY pages DESC LIMIT 1;

SELECT released_year AS 'year', COUNT(*) AS '# books', AVG(pages) AS 'avg pages' FROM books GROUP BY released_year;
