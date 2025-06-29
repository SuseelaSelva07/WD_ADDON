CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(150) NOT NULL,
    Author VARCHAR(100),
    Publisher VARCHAR(100),
    ISBN VARCHAR(20) UNIQUE,
    Category VARCHAR(50),
    CopiesAvailable INT DEFAULT 0
);

CREATE TABLE Member (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    MembershipDate DATE NOT NULL
);

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50),
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    StaffID INT,
    IssueDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);
