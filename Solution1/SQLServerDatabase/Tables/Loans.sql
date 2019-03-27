CREATE TABLE [dbo].[Loans]
(
	[StudentId] NVARCHAR(9) NOT NULL, 
    [ISBN] NVARCHAR(17) NOT NULL, 
	CONSTRAINT [fk_tblLoans_toTblStudent] FOREIGN KEY ([StudentId]) REFERENCES [Student]([StudentId]),
    PRIMARY KEY ([StudentId], [ISBN]), 
    CONSTRAINT [FK_Loans_ToBook] FOREIGN KEY ([ISBN]) REFERENCES [Book]([ISBN])
)
