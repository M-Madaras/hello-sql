CREATE TABLE Books_mtm (
    Id INT PRIMARY KEY,
    Title TEXT,
    Genre TEXT,
    Author TEXT,
    isbn TEXT,
    Qty INTEGER
)

CREATE TABLE User_mtm (
     Id INT PRIMARY KEY,
     First_Name TEXT,
     Last_Name  TEXT,
     Email     VARCHAR(200) UNIQUE NOT NULL
)

ALTER TABLE User_mtm
MODIFY COLUMN Email VARCHAR(200) UNIQUE NOT NULL;


CREATE TABLE Checkout_mtm(
    Id INT PRIMARY KEY,
    book_id INT,
    user_id INT,
    checkout_date TEXT,
    return_date DATETIME,
    FOREIGN KEY (book_id) REFERENCES Books_mtm(Id),
    FOREIGN KEY (user_id) REFERENCES User_mtm(Id)

)

INSERT INTO Books_mtm (id, title, genre, author)
VALUES (1, "THE Old Man and The Sea", "Fiction","Ernest Hemingway")

SELECT * FROM Books_mtm

UPDATE Books_mtm
SET QTY = 1000
WHERE id = 1

INSERT INTO Books_mtm
VALUES 
(2, "Tuesday With Maury", "Fiction","Mitch Albom", 2000),
(3, "Rich Dad Poor Dad", "Self Help","Robert Kiyosaki", 240),
(4, "THE Tale Of Two Cities", "Fiction","Charles Dickens", 20)

SELECT Title
FROM Books_mtm
WHERE Genre in ('Fiction', 'Self Help')