USE movie;

CREATE TABLE MOVIE(
	Movie_Id					Integer			NOT NULL,
    Movie_Title					Char(50)		NOT NULL,
    Movie_Year					Integer			NOT NULL,
    Movie_Time					Integer			NOT NULL,
    Movie_Language				Char(50)		NOT NULL,
    Movie_Date_Release			Date			NOT NULL,
    Movie_Release_Country		Char(5)			NOT NULL,
    CONSTRAINT 					Movie_PK		PRIMARY KEY(Movie_Id)
    );
    
    
CREATE TABLE ACTOR(
	Actor_Id					Integer			NOT NULL,
    Actor_FirstName				Char(20)		NOT NULL,
    Actor_LastName				Char(20)		NOT NULL,
    Actor_Gender				Char(1)			NOT NULL,
    CONSTRAINT 					Actor_PK		PRIMARY KEY(Actor_Id)
);
    
CREATE TABLE MOVIE_CAST(
	Actor_Id					Integer			NOT NULL,
    Movie_Id					Integer			NOT NULL,
    Role						Char(30)		NOT NULL,
    CONSTRAINT					Movie_Cast_FK	PRIMARY KEY(Actor_Id, Movie_Id),
	CONSTRAINT 					Movie_PK		FOREIGN KEY(Movie_Id)
								REFERENCES		MOVIE(Movie_Id),
	CONSTRAINT 					Actor_PK		FOREIGN KEY(Actor_Id)
								REFERENCES		ACTOR(Actor_Id)
);


CREATE TABLE DIRECTOR(
	Director_Id 				Integer			NOT NULL,
    Director_FirstName			char(20)		NOT NULL,
    Director_LastName			Char(20)		NOT NULL,
	CONSTRAINT					Director_PK		PRIMARY KEY(Director_Id)
    
);


CREATE TABLE MOVIE_DIRECTION(
	Director_Id			Integer			NOT NULL,
    Movie_Id			Integer			NOT NULL
);


CREATE TABLE REVIEWER(
	Reviewer_Id			Integer			NOT NULL,
    Reviewer_Name		Char(20)		NOT NULL,
    CONSTRAINT			Reviewer_PK		PRIMARY KEY(Reviewer_Id)
);


 
CREATE TABLE RATING(
	Movie_Id					Integer			NOT NULL,
    Reviewer_Id					Integer			NOT NULL,
    Reviewer_Star				Integer			NOT NULL,
    Number_Ratings				varchar(20)		NOT NULL,
    CONSTRAINT					Rating_FK		PRIMARY KEY(Reviewer_Id, Movie_Id),
    CONSTRAINT 					Movie1_PK		FOREIGN KEY(Movie_Id)
								REFERENCES		MOVIE(Movie_Id),
	CONSTRAINT 					Reviewer_PK		FOREIGN KEY(Reviewer_Id)
								REFERENCES		REVIEWER(Reviewer_Id)
                                
);


CREATE TABLE GENRES(
	Genres_Id			Integer				NOT NULL,
    Genres_Tittle		Char(20)			NOT NULL,
    CONSTRAINT			Genres_PK			PRIMARY KEY(Genres_Id)
);

CREATE TABLE MOVIE_GENRES(
	Movie_Id			Integer				NOT NULL,
	Genres_Id			Integer				NOT NULL
    
);
    