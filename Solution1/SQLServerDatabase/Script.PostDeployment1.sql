/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


IF '$(LoadTestData)' = 'true'
BEGIN

DELETE FROM Loans;
DELETE FROM Student;
DELETE FROM Book;


INSERT INTO Student(StudentId, FirstName, LastName, Email, Mobile) VALUES 
('s12345678', 'Fred', 'Flintstone', '12345678@student.swin.edu.au', '0400555111'),
('s23456789', 'Barney', 'Rubble', '23456789@student.swin.edu.au', '0400555222'),
('s34567890', 'Bam-Bam', 'Rubble', '34567890@student.swin.edu.au', '0400555333');

INSERT INTO Book (ISBN, Title, YearPublished, AuthorID, AuthorFirstName, AuthorLastName, AuthorTFN) VALUES
('978-3-16148410-0', 'Relationships with Databases, the ins and outs', 1970, '32567', 'Edgar', 'Codd', '150111222'),
('978-3-16148410-1', 'Normalisation, how to make a database geek fit in.', 1973, '32567', 'Edgar', 'Codd', '150111222'),
('978-3-16148410-2', 'TCP/IP, the protocol for the masses.', 1983, '76543', 'Vinton', 'Cerf', '150111333'),
('978-3-16148410-3', 'The Man, the Bombe, and the Enigma.', 1940, '12345', 'Alan', 'Turing', '150111444');

END;