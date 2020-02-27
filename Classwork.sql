-- • Write a query in SQL to find the name and year of the movies.
-- • Write a query in SQL to find the year when the movie American Beauty released.
-- • Write a query in SQL to find the movie which was released in the year 1999
-- • Write a query in SQL to find the movies which was released before 1998
-- • Write a query in SQL to find the movie which was released in the year 1999
-- • Write a query in SQL to return the name of all reviewers and name of movies together in a single
--   list
-- • Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their
--   rating
-- • Write a query in SQL to find the titles of all movies that have no ratings.
-- • Write a query in SQL to find the name of all reviewers who have rated their ratings with a NULL
--   value
-- • Write a query in SQL to find the name of movie and director (first and last names) who directed a
--   movie that casted a role for 'Eyes Wide Shut'.

Select Movie_Title, Movie_Year From MOVIE;
Select Movie_Year From MOVIE Where Movie_Title = 'American Beauty';
Select Movie_Title From MOVIE Where Movie_Year = '1999';
Select Movie_Title From MOVIE Where Movie_Year < '1998';
Select Movie_Title From MOVIE Where Movie_Year = '1999';
Select Reviewer_Name, Movie_Title from REVIEWER join MOVIE;
Select Reviewer_Name from REVIEWER Where Reviewer_Id in (Select Reviewer_Id From RATING Where Reviewer_Star >= 7);
Select Movie_Title from MOVIE Where Movie_Id in (Select Movie_Id From RATING Where Number_Ratings = 'null');
Select Reviewer_Name from REVIEWER Where Reviewer_Id in (Select Reviewer_Id From RATING Where Number_Ratings = 'null');
