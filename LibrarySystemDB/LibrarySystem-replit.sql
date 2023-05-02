	/* ===============================================*/
--  Original Source: https://github.com/AlexanderWong/Library-Management-System/blob/master/LibraryManagementSystemAndStoredProceduresFINAL.sql

	/* ======================= TABLES ========================*/

	CREATE TABLE tbl_publisher (
		publisher_PublisherName VARCHAR(100) PRIMARY KEY NOT NULL,
		publisher_PublisherAddress VARCHAR(200) NOT NULL,
		publisher_PublisherPhone VARCHAR(50) NOT NULL
	);

	CREATE TABLE tbl_book (
		book_BookID INT NOT NULL PRIMARY KEY ,
		book_Title VARCHAR(100) NOT NULL,
		book_PublisherName VARCHAR(100) NOT NULL 
	);

	CREATE TABLE tbl_library_branch (
		library_branch_BranchID INTEGER PRIMARY KEY   ,
		library_branch_BranchName VARCHAR(100) NOT NULL,
		library_branch_BranchAddress VARCHAR(200) NOT NULL
	);

	-- SELECT * FROM tbl_library_branch

	CREATE TABLE tbl_borrower (
		borrower_CardNo INT PRIMARY KEY NOT NULL ,
		borrower_BorrowerName VARCHAR(100) NOT NULL,
		borrower_BorrowerAddress VARCHAR(200) NOT NULL,
		borrower_BorrowerPhone VARCHAR(50) NOT NULL
	);

	-- SELECT * FROM tbl_borrower

	CREATE TABLE tbl_book_loans (
		book_loans_LoansID INTEGER PRIMARY KEY AUTOINCREMENT,
		book_loans_BookID INT NOT NULL,
		book_loans_BranchID INT NOT NULL,
		book_loans_CardNo INT NOT NULL,
		book_loans_DateOut VARCHAR(50) NOT NULL,
		book_loans_DueDate VARCHAR(50) NOT NULL
	);


	-- SELECT * FROM tbl_book_loans
		/* Use GETDATE() to retrieve the date values for Date out. Use DATEADD for the DueDate*/
	 
	CREATE TABLE tbl_book_copies (
		book_copies_CopiesID INTEGER PRIMARY KEY  AUTOINCREMENT, 
		book_copies_BookID INT NOT NULL  ,
		book_copies_BranchID INT NOT NULL  ,
		book_copies_No_Of_Copies INT NOT NULL
	);

	-- SELECT * FROM tbl_book_copies

	CREATE TABLE tbl_book_authors (
		book_authors_AuthorID INTEGER PRIMARY KEY  AUTOINCREMENT,
		book_authors_BookID INT NOT NULL  ,
		book_authors_AuthorName VARCHAR(50) NOT NULL
	);

	-- SELECT * FROM tbl_book_authors

/*======================== END TABLES ======================*/


/*==================== POPULATING TABLES ======================*/
	
	INSERT INTO tbl_publisher
		(publisher_PublisherName, publisher_PublisherAddress, publisher_PublisherPhone)
		VALUES
		('DAW Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Viking','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Signet Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Chilton Books','Not Available','Not Available'),
		('George Allen & Unwin','83 Alexander Ln, Crows Nest NSW 2065, Australia','+61-2-8425-0100'),
		('Alfred A. Knopf','The Knopf Doubleday Group Domestic Rights, 1745 Broadway, New York, NY 10019','212-940-7390'),		
		('Bloomsbury','Bloomsbury Publishing Inc., 1385 Broadway, 5th Floor, New York, NY 10018','212-419-5300'),
		('Shinchosa','Oga Bldg. 8, 2-5-4 Sarugaku-cho, Chiyoda-ku, Tokyo 101-0064 Japan','+81-3-5577-6507'),
		('Harper and Row','HarperCollins Publishers, 195 Broadway, New York, NY 10007','212-207-7000'),
		('Pan Books','175 Fifth Avenue, New York, NY 10010','646-307-5745'),
		('Chalto & Windus','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Harcourt Brace Jovanovich','3 Park Ave, New York, NY 10016','212-420-5800'),
		('W.W. Norton',' W. W. Norton & Company, Inc., 500 Fifth Avenue, New York, New York 10110','212-354-5500'),
		('Scholastic','557 Broadway, New York, NY 10012','800-724-6527'),
		('Bantam','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Picador USA','175 Fifth Avenue, New York, NY 10010','646-307-5745')		
	;

SELECT 'tbl_publisher'as TableName, count(*) as RecordCount FROM tbl_publisher;
-- *******************************************

INSERT INTO tbl_book
		(book_BookID, book_Title, book_PublisherName)
		VALUES 
		(1, 'The Name of the Wind', 'DAW Books'),
		(2, 'It', 'Viking'),
		(3, 'The Green Mile', 'Signet Books'),
		(4, 'Dune', 'Chilton Books'),
		(5, 'The Hobbit', 'George Allen & Unwin'),
		(6, 'Eragon', 'Alfred A. Knopf'),
		(7, 'A Wise Mans Fear', 'DAW Books'),
		(8, 'Harry Potter and the Philosophers Stone', 'Bloomsbury'),
		(9, 'Hard Boiled Wonderland and The End of the World', 'Shinchosa'),
		(10, 'The Giving Tree', 'Harper and Row'),
		(11, 'The Hitchhikers Guide to the Galaxy', 'Pan Books'),
		(12,'Brave New World', 'Chalto & Windus'),
		(13,'The Princess Bride', 'Harcourt Brace Jovanovich'),
		(14,'Fight Club', 'W.W. Norton'),
		(15, 'Holes', 'Scholastic'),
		(16, 'Harry Potter and the Chamber of Secrets', 'Bloomsbury'),
		(17, 'Harry Potter and the Prisoner of Azkaban', 'Bloomsbury'),
		(18, 'The Fellowship of the Ring', 'George Allen & Unwin'),
		(19,'A Game of Thrones', 'Bantam'),
		(20,'The Lost Tribe', 'Picador USA');

SELECT 'tbl_book'as TableName, count(*) as RecordCount FROM tbl_book;
-- *******************************************

	INSERT INTO tbl_library_branch
		(library_branch_BranchName, library_branch_BranchAddress)
		VALUES
		('Sharpstown','32 Corner Road, New York, NY 10012'),
		('Central','491 3rd Street, New York, NY 10014'),
		('Saline','40 State Street, Saline, MI 48176'),
		('Ann Arbor','101 South University, Ann Arbor, MI 48104');

SELECT 'tbl_library_branch'as TableName, count(*) as RecordCount FROM tbl_library_branch;
-- *******************************************

INSERT INTO tbl_borrower
		(borrower_CardNo, borrower_BorrowerName, borrower_BorrowerAddress, borrower_BorrowerPhone)
		VALUES
		(1, 'Joe Smith','1321 4th Street, New York, NY 10014','212-312-1234'),
		(2,'Jane Smith','1321 4th Street, New York, NY 10014','212-931-4124'),
		(3,'Tom Li','981 Main Street, Ann Arbor, MI 48104','734-902-7455'),
		(4,'Angela Thompson','2212 Green Avenue, Ann Arbor, MI 48104','313-591-2122'),
		(5,'Harry Emnace','121 Park Drive, Ann Arbor, MI 48104','412-512-5522'),
		(6, 'Tom Haverford','23 75th Street, New York, NY 10014','212-631-3418'),
		(7,'Haley Jackson','231 52nd Avenue New York, NY 10014','212-419-9935'),
		(8,'Michael Horford','653 Glen Avenue, Ann Arbor, MI 48104','734-998-1513');
SELECT 'tbl_borrower'as TableName, count(*) as RecordCount FROM tbl_borrower;
-- *******************************************

INSERT INTO tbl_book_loans
		(book_loans_BookID, book_loans_BranchID, book_loans_CardNo, book_loans_DateOut, book_loans_DueDate)
		VALUES
		('1','1','100','1/1/18','2/2/18'),
		('2','1','100','1/1/18','2/2/18'),
		('3','1','100','1/1/18','2/2/18'),
		('4','1','100','1/1/18','2/2/18'),
		('5','1','102','1/3/18','2/3/18'),
		('6','1','102','1/3/18','2/3/18'),
		('7','1','102','1/3/18','2/3/18'),
		('8','1','102','1/3/18','2/3/18'),
		('9','1','102','1/3/18','2/3/18'),
		('11','1','102','1/3/18','2/3/18'),
		('12','2','105','12/12/17','1/12/18'),
		('10','2','105','12/12/17','1/12/17'),
		('20','2','105','2/3/18','3/3/18'),
		('18','2','105','1/5/18','2/5/18'),
		('19','2','105','1/5/18','2/5/18'),
		('19','2','100','1/3/18','2/3/18'),
		('11','2','106','1/7/18','2/7/18'),
		('1','2','106','1/7/18','2/7/18'),
		('2','2','100','1/7/18','2/7/18'),
		('3','2','100','1/7/18','2/7/18'),
		('5','2','105','12/12/17','1/12/18'),
		('4','3','103','1/9/18','2/9/18'),
		('7','3','102','1/3/18','2/3/18'),
		('17','3','102','1/3/18','2/3/18'),
		('16','3','104','1/3/18','2/3/18'),
		('15','3','104','1/3/18','2/3/18'),
		('15','3','107','1/3/18','2/3/18'),
		('14','3','104','1/3/18','2/3/18'),
		('13','3','107','1/3/18','2/3/18'),
		('13','3','102','1/3/18','2/3/18'),
		('19','3','102','12/12/17','1/12/18'),
		('20','4','103','1/3/18','2/3/18'),
		('1','4','102','1/12/18','2/12/18'),
		('3','4','107','1/3/18','2/3/18'),
		('18','4','107','1/3/18','2/3/18'),
		('12','4','102','1/4/18','2/4/18'),
		('11','4','103','1/15/18','2/15/18'),
		('9','4','103','1/15/18','2/15/18'),
		('7','4','107','1/1/18','2/2/18'),
		('4','4','103','1/1/18','2/2/18'),
		('1','4','103','2/2/17','3/2/18'),
		('20','4','103','1/3/18','2/3/18'),
		('1','4','102','1/12/18','2/12/18'),
		('3','4','107','1/13/18','2/13/18'),
		('18','4','107','1/13/18','2/13/18'),
		('12','4','102','1/14/18','2/14/18'),
		('11','4','103','1/15/18','2/15/18'),
		('9','4','103','1/15/18','2/15/18'),
		('7','4','107','1/19/18','2/19/18'),
		('4','4','103','1/19/18','2/19/18'),
		('1','4','103','1/22/18','2/22/18');

	SELECT 'tbl_book_loans'as TableName, count(*) as RecordCount FROM tbl_book_loans;
 --  -----------------
	INSERT INTO tbl_book_copies
		(book_copies_BookID, book_copies_BranchID, book_copies_No_Of_Copies)
		VALUES
		('1','1','5'),
		('2','1','5'),
		('3','1','5'),
		('4','1','5'),
		('5','1','5'),
		('6','1','5'),
		('7','1','5'),
		('8','1','5'),
		('9','1','5'),
		('10','1','5'),
		('11','1','5'),
		('12','1','5'),
		('13','1','5'),
		('14','1','5'),
		('15','1','5'),
		('16','1','5'),
		('17','1','5'),
		('18','1','5'),
		('19','1','5'),
		('20','1','5'),
		('1','2','5'),
		('2','2','5'),
		('3','2','5'),
		('4','2','5'),
		('5','2','5'),
		('6','2','5'),
		('7','2','5'),
		('8','2','5'),
		('9','2','5'),
		('10','2','5'),
		('11','2','5'),
		('12','2','5'),
		('13','2','5'),
		('14','2','5'),
		('15','2','5'),
		('16','2','5'),
		('17','2','5'),
		('18','2','5'),
		('19','2','5'),
		('20','2','5'),
		('1','3','5'),
		('2','3','5'),
		('3','3','5'),
		('4','3','5'),
		('5','3','5'),
		('6','3','5'),
		('7','3','5'),
		('8','3','5'),
		('9','3','5'),
		('10','3','5'),
		('11','3','5'),
		('12','3','5'),
		('13','3','5'),
		('14','3','5'),
		('15','3','5'),
		('16','3','5'),
		('17','3','5'),
		('18','3','5'),
		('19','3','5'),
		('20','3','5'),
		('1','4','5'),
		('2','4','5'),
		('3','4','5'),
		('4','4','5'),
		('5','4','5'),
		('6','4','5'),
		('7','4','5'),
		('8','4','5'),
		('9','4','5'),
		('10','4','5'),
		('11','4','5'),
		('12','4','5'),
		('13','4','5'),
		('14','4','5'),
		('15','4','5'),
		('16','4','5'),
		('17','4','5'),
		('18','4','5'),
		('19','4','5'),
		('20','4','5');

	SELECT 'tbl_book_copies'as TableName, count(*) as RecordCount FROM tbl_book_copies;

	

	INSERT INTO tbl_book_authors
(book_authors_BookID,book_authors_AuthorName)
		VALUES
		('1','Patrick Rothfuss'),
		('2','Stephen King'),
		('3','Stephen King'),
		('4','Frank Herbert'),
		('5','J.R.R. Tolkien'),
		('6','Christopher Paolini'),
		('6','Patrick Rothfuss'),
		('8','J.K. Rowling'),
		('9','Haruki Murakami'),
		('10','Shel Silverstein'),
		('11','Douglas Adams'),
		('12','Aldous Huxley'),
		('13','William Goldman'),
		('14','Chuck Palahniuk'),
		('15','Louis Sachar'),
		('16','J.K. Rowling'),
		('17','J.K. Rowling'),
		('18','J.R.R. Tolkien'),
		('19','George R.R. Martin'),
		('20','Mark Lee');

		SELECT 'tbl_book_authors'as TableName, count(*) as RecordCount FROM tbl_book_authors