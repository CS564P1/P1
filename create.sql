drop table if exists Items;
drop table if exists Person;
drop table if exists Bids;
drop table if exists Categories;

CREATE TABLE Categories(
	ItemID INTEGER,
	Categories TEXT,
	PRIMARY KEY (Categories, ItemID),
	FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);

CREATE TABLE Person(
	UserID TEXT PRIMARY KEY,
	Rating INTEGER,
	Location TEXT,
	Country TEXT
);

CREATE TABLE Bids(
	UserID TEXT,
	Time TEXT,
	Amount REAL,
	ItemID INTEGER,
	PRIMARY KEY (Time, UserID),
	FOREIGN KEY (UserID) REFERENCES Person(UserID),
	FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);

CREATE TABLE Items(
	ItemID INTEGER PRIMARY KEY,
	Name TEXT,
	Currently REAL,
	Buy_Price REAL,
	First_Bid REAL,
	Number_of_Bids INTEGER,
	Started TEXT,
	Ends TEXT,
	UserID TEXT,
	Description TEXT,
	FOREIGN KEY (UserID) REFERENCES Person(UserID)
);