
CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    RollNumber VARCHAR(20),
    Department VARCHAR(50) NOT NULL,
    Semester INT,
    JoiningDate DATE NOT NULL,
    MembershipType VARCHAR(30) DEFAULT 'Regular',
    MembershipStatus VARCHAR(20) DEFAULT 'Active',
    SkillInterest VARCHAR(100)
);

CREATE TABLE Events (
    EventID INT PRIMARY KEY AUTO_INCREMENT,
    EventName VARCHAR(150) NOT NULL,
    EventDate DATE NOT NULL,
    EventTime TIME NOT NULL,
    Venue VARCHAR(100) NOT NULL,
    Description TEXT,
    EventType VARCHAR(50) NOT NULL,
    MaxParticipants INT,
    RegistrationDeadline DATE,
    EventStatus VARCHAR(20) DEFAULT 'Upcoming',
    OrganizerName VARCHAR(100)
);

CREATE TABLE Registrations (
    RegistrationID INT PRIMARY KEY AUTO_INCREMENT,
    MemberID INT NOT NULL,
    EventID INT NOT NULL,
    RegistrationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    AttendanceStatus VARCHAR(20) DEFAULT 'Registered',
    FeedbackRating INT,
    Comments TEXT,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (EventID) REFERENCES Events(EventID)
);

INSERT INTO Members (FullName, Email, Phone, RollNumber, Department, Semester, JoiningDate, MembershipType, MembershipStatus, SkillInterest) VALUES
('Ahmed Hassan', 'ahmed.hassan@uet.edu.pk', '03001234567', '2023-CS-101', 'Computer Science', 5, '2024-01-15', 'Premium', 'Active', 'Web Development'),
('Fatima Zahid', 'fatima.zahid@uet.edu.pk', '03009876543', '2023-CS-115', 'Computer Science', 5, '2024-01-20', 'Regular', 'Active', 'AI & Machine Learning'),
('Ali Raza', 'ali.raza@uet.edu.pk', '03011122334', '2023-SE-045', 'Software Engineering', 4, '2024-02-10', 'Regular', 'Active', 'Mobile Development'),
('Ayesha Khan', 'ayesha.khan@uet.edu.pk', '03025556677', '2024-CS-078', 'Computer Science', 3, '2024-02-15', 'Premium', 'Active', 'Data Science'),
('Hassan Mahmood', 'hassan.mahmood@uet.edu.pk', '03033344455', '2024-EE-012', 'Electrical Engineering', 3, '2024-03-01', 'Regular', 'Active', 'IoT & Embedded Systems'),
('Zainab Ali', 'zainab.ali@uet.edu.pk', '03044455566', '2023-CS-092', 'Computer Science', 6, '2024-01-25', 'Premium', 'Active', 'Cyber Security'),
('Bilal Ahmed', 'bilal.ahmed@uet.edu.pk', '03055566677', '2024-SE-023', 'Software Engineering', 2, '2024-03-10', 'Regular', 'Inactive', 'Game Development'),
('Maryam Siddiq', 'maryam.siddiq@uet.edu.pk', '03066677788', '2023-CS-134', 'Computer Science', 5, '2024-01-30', 'Regular', 'Active', 'Web Development'),
('Usman Tariq', 'usman.tariq@uet.edu.pk', '03077788899', '2024-CS-056', 'Computer Science', 3, '2024-02-20', 'Regular', 'Active', 'AI & Machine Learning'),
('Sara Malik', 'sara.malik@uet.edu.pk', '03088899900', '2023-SE-067', 'Software Engineering', 4, '2024-02-25', 'Premium', 'Active', 'Full Stack Development');

INSERT INTO Events (EventName, EventDate, EventTime, Venue, Description, EventType, MaxParticipants, RegistrationDeadline, EventStatus, OrganizerName) VALUES
('Web Development Bootcamp', '2025-02-15', '14:00:00', 'Computer Lab A, Main Block', 'Comprehensive 8-week bootcamp', 'Workshop', 50, '2025-02-10', 'Upcoming', 'Ahmed Hassan'),
('UET Tech Hackathon 2025', '2025-03-20', '09:00:00', 'University Auditorium', '48-hour coding marathon', 'Competition', 200, '2025-03-15', 'Upcoming', 'Fatima Zahid'),
('AI & ML Workshop', '2025-02-25', '15:00:00', 'AI Lab, IT Building', 'ML algorithms using Python', 'Workshop', 40, '2025-02-20', 'Upcoming', 'Ayesha Khan'),
('Mobile App Series', '2025-03-05', '16:00:00', 'Room 205, CS Block', 'Android and Flutter', 'Training', 35, '2025-03-01', 'Upcoming', 'Ali Raza'),
('Cyber Security Seminar', '2025-01-28', '13:00:00', 'Seminar Hall', 'Industry security experts', 'Seminar', 100, '2025-01-25', 'Completed', 'Zainab Ali'),
('Python for Beginners', '2025-02-08', '14:30:00', 'Computer Lab B', 'Python basics', 'Workshop', 60, '2025-02-05', 'Upcoming', 'Usman Tariq'),
('Tech Career Fair 2025', '2025-04-10', '10:00:00', 'University Ground', 'Meet recruiters', 'Career Event', 500, '2025-04-05', 'Upcoming', 'Hassan Mahmood'),
('Git & GitHub Workshop', '2025-02-18', '15:30:00', 'Computer Lab C', 'Version control', 'Workshop', 45, '2025-02-15', 'Upcoming', 'Maryam Siddiq');

INSERT INTO Registrations (MemberID, EventID, AttendanceStatus, FeedbackRating, Comments) VALUES
(1, 1, 'Attended', 5, 'Excellent workshop!'),
(2, 1, 'Attended', 5, 'Very comprehensive.'),
(3, 2, 'Registered', NULL, NULL),
(1, 3, 'Attended', 4, 'Good content.'),
(4, 1, 'Registered', NULL, NULL),
(2, 4, 'Registered', NULL, NULL),
(5, 2, 'Registered', NULL, NULL),
(6, 5, 'Attended', 5, 'Outstanding speakers!'),
(7, 2, 'Absent', NULL, NULL),
(8, 1, 'Attended', 4, 'Great experience.'),
(9, 3, 'Registered', NULL, NULL),
(10, 2, 'Registered', NULL, NULL);