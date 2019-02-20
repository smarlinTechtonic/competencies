-- CREATE:
CREATE TABLE Hobbies (PersonID int, HobbyName varchar(255));

-- INSERT:
INSERT INTO Hobbies (PersonID, HobbyName) VALUES (1, 'Arm Wrestling');

-- SELECT:
SELECT * FROM Hobbies;

-- JOIN 2 Tables (Only common values are shown):
SELECT p.FirstName, p.LastName, p.PersonID, h.HobbyName
FROM People p
JOIN Hobbies h
ON h.PersonID = p.PersonID;

-- RIGHT JOIN (Shows all values from right table and nulls missing fields from left):
SELECT p.FirstName, p.LastName, p.PersonID, h.HobbyName
FROM People p
RIGHT JOIN Hobbies h
ON h.PersonID = p.PersonID;

-- LEFT JOIN (Shows all values from left table and nulls missing fields from right):
SELECT p.FirstName, p.LastName, p.PersonID, h.HobbyName
FROM People p
LEFT JOIN Hobbies h
ON h.PersonID = p.PersonID;

-- FULL OUTER JOIN (All values from left and right tables with nulls for missing fields):
SELECT FirstName, LastName, HobbyName
FROM People P FULL OUTER JOIN Hobbies H
ON P.PersonID = H.PersonID

-- WHERE CLAUSE:
SELECT p.LastName AS Name, HobbyName AS Hobby
FROM Hobbies h
JOIN People p
ON h.PersonID = p.PersonID
WHERE h.HobbyName = 'Curling';

SELECT LastName
FROM People
WHERE PersonID <> 4
ORDER BY PersonID;

-- UPDATE TABLE ROW:
UPDATE Hobbies SET HobbyName = 'Mountain Biking' WHERE HobbyName = 'Knitting';

-- JOIN MULTIPLE TABLES:
SELECT P.PersonID AS PID, CONVERT(date,T.Date_available) AS Date,
P.FirstName, P.City, H.HobbyName
FROM TimesAvailable T
JOIN Hobbies H ON H.PersonID = T.PersonID
JOIN People P ON P.PersonID = T.PersonID
ORDER BY P.LastName;

-- ORDER BY:
SELECT * FROM People
ORDER BY LastName;

-- LIKE (Wildcard):
SELECT DISTINCT HobbyName
FROM Hobbies
WHERE HobbyName LIKE '%arm%'

-- DELETE TABLE DATA:
DELETE FAKE

-- ALTER TABLE, ADD COLUMN:
ALTER TABLE Fake
ADD Email varchar(255);

-- DROP A TABLE:
DROP TABLE Shippers;
