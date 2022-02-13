SELECT COUNT(*) FROM books
WHERE title LIKE '%the%';

SELECT author_fname, author_lname, MIN(released_year) AS 'year_of_first_book' FROM books GROUP BY author_lname, author_fname;

SELECT author_fname, author_lname, MAX(pages) AS 'longest_page_count' FROM books GROUP BY author_lname, author_fname;

SELECT author_fname, author_lname, SUM(pages) AS 'total_pages_written' FROM books GROUP BY author_lname, author_fname;
