SELECT title FROM books WHERE title LIKE '%stories%'

SELECT title, pages FROM books LIMIT 1 ORDER BY pages DESC;

SELECT CONCAT(title, ' - ', released_year) AS 'summary' FROM books LIMIT 3 ORDER BY released_year DESC;

SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

SELECT title, released_year, stock_quantity FROM books LIMIT 3 ORDER BY stock_quantity;

SELECT title, author_lname FROM books ORDER BY 2, 1;

SELECT UPPER(CONCAT('my favorite author is ', author_fname, ' ', author_lname, '!')) AS 'yell' FROM books ORDER BY author_lname;
