CREATE TABLE Genre ( 
	GenreId              integer   ,
	GenreCode            integer   ,
	GenreName            varchar(100)   
 );

CREATE TABLE Language ( 
	LangId               integer   ,
	LangCode             text   ,
	LangName             text   ,
	CONSTRAINT Unq_Language_LangId UNIQUE ( LangId ) 
 );

CREATE TABLE Location ( 
	LocationId           integer   ,
	RegionCode           text   ,
	RegionName           text   ,
	CONSTRAINT Unq_Location_LocationId UNIQUE ( LocationId ) 
 );

CREATE TABLE LocationLanguage ( 
	Location             integer   ,
	Language             integer   ,
	FOREIGN KEY ( Location ) REFERENCES Location( LocationId )  ,
	FOREIGN KEY ( Language ) REFERENCES Language( LangId )  
 );

CREATE INDEX Idx_LocationLanguage_Location ON LocationLanguage ( Location );

CREATE INDEX Idx_LocationLanguage_Language ON LocationLanguage ( Language );

INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 1, 'Action', 'Action' ); 
INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 2, 'Adventure', 'Adventure' ); 
INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 3, 'Biography', 'Biography' ); 
INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 4, 'Comedy', 'Comedy' ); 
INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 5, 'Crime', 'Crime' ); 
INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 6, ' Documentary', ' Documentary' ); 
INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 7, 'Drama', 'Drama' ); 
INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 8, ' Family', ' Family' ); 
INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 9, 'Fantasy', 'Fantasy' ); 
INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 10, 'Horror', 'Horror' ); 
INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 11, 'Period', 'Period' ); 
INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 12, 'Romance', 'Romance' ); 
INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 13, 'Sci-fi', 'Sci-fi' ); 
INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 14, ' Thriller', ' Thriller' ); 
INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 15, 'War', 'War' ); 
INSERT INTO Genre( GenreId, GenreCode, GenreName ) VALUES ( 16, ' Family', ' Family' ); 

INSERT INTO Language( LangId, LangCode, LangName ) VALUES ( 1, 'Telugu', 'Telugu' ); 
INSERT INTO Language( LangId, LangCode, LangName ) VALUES ( 2, 'Hindi', 'Hindi' ); 
INSERT INTO Language( LangId, LangCode, LangName ) VALUES ( 3, 'English', 'English' ); 
INSERT INTO Language( LangId, LangCode, LangName ) VALUES ( 4, 'Punjabi', 'Punjabi' ); 
INSERT INTO Language( LangId, LangCode, LangName ) VALUES ( 5, 'Kannada', 'Kannada' ); 
INSERT INTO Language( LangId, LangCode, LangName ) VALUES ( 6, 'Tamil', 'Tamil' ); 
INSERT INTO Language( LangId, LangCode, LangName ) VALUES ( 7, 'Malayalam', 'Malayalam' ); 

INSERT INTO Location( LocationId, RegionCode, RegionName ) VALUES ( 1, 'Hyderabad', 'Hyderabad' ); 
INSERT INTO Location( LocationId, RegionCode, RegionName ) VALUES ( 2, 'Bangaluru', 'Bangaluru' ); 
INSERT INTO Location( LocationId, RegionCode, RegionName ) VALUES ( 3, 'Mumbai', 'Mumbai' ); 
INSERT INTO Location( LocationId, RegionCode, RegionName ) VALUES ( 4, 'Ahmedabad', 'Ahmedabad' ); 
INSERT INTO Location( LocationId, RegionCode, RegionName ) VALUES ( 5, 'NCR', 'NCR' ); 
INSERT INTO Location( LocationId, RegionCode, RegionName ) VALUES ( 6, 'Chandigarh', 'Chandigarh' ); 
INSERT INTO Location( LocationId, RegionCode, RegionName ) VALUES ( 7, 'Channai', 'Channai' ); 
INSERT INTO Location( LocationId, RegionCode, RegionName ) VALUES ( 8, 'Pune', 'Pune' ); 

INSERT INTO LocationLanguage( Location, Language ) VALUES ( 1, 1 ); 
INSERT INTO LocationLanguage( Location, Language ) VALUES ( 1, 2 ); 
INSERT INTO LocationLanguage( Location, Language ) VALUES ( 1, 3 ); 
INSERT INTO LocationLanguage( Location, Language ) VALUES ( 1, 4 ); 
INSERT INTO LocationLanguage( Location, Language ) VALUES ( 2, 1 ); 
INSERT INTO LocationLanguage( Location, Language ) VALUES ( 2, 2 ); 
INSERT INTO LocationLanguage( Location, Language ) VALUES ( 2, 3 ); 
INSERT INTO LocationLanguage( Location, Language ) VALUES ( 2, 4 ); 
INSERT INTO LocationLanguage( Location, Language ) VALUES ( 2, 5 ); 
INSERT INTO LocationLanguage( Location, Language ) VALUES ( 2, 6 ); 
INSERT INTO LocationLanguage( Location, Language ) VALUES ( 2, 6 ); 

