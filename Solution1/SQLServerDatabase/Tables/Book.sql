CREATE TABLE [dbo].[Book]
(
	[ISBN] NVARCHAR(17) NOT NULL PRIMARY KEY,
	[Title] NVARCHAR(30) NULL,
	[YearPublished] INT NULL,
	[AuthorID] NVARCHAR(5) NULL,
	[AuthorFirstName] NVARCHAR(30) NULL,
	[AuthorLastName] NVARCHAR(30) NULL,
    [AuthorTFN] NVARCHAR(9) NOT NULL
    
)
