-- SELECT QUERIES
SELECT * FROM Members;
SELECT * FROM Events;
SELECT * FROM Registrations;

-- Counts
SELECT COUNT(*) AS TotalMembers FROM Members;
SELECT COUNT(*) AS TotalEvents FROM Events;
SELECT COUNT(*) AS TotalRegistrations FROM Registrations;

-- UPDATE QUERIES
UPDATE Members 
SET Semester = Semester + 1 
WHERE Department = 'Computer Science' AND Semester < 8;

UPDATE Events 
SET EventStatus = 'Completed' 
WHERE EventDate < '2025-02-01';

-- DELETE QUERIES
DELETE FROM Registrations 
WHERE AttendanceStatus = 'Absent';

DELETE FROM Members 
WHERE MembershipStatus = 'Inactive' AND JoiningDate < '2024-01-01';

-- VERIFY FINAL RESULTS
SELECT * FROM Members;
SELECT * FROM Events;
SELECT * FROM Registrations;