
CREATE DATABASE IF NOT EXISTS boltonauction;
USE boltonauction;
DROP TABLE IF EXISTS `Staff` CASCADE;
DROP TABLE IF EXISTS `Seller` CASCADE;
DROP TABLE IF EXISTS `Bidder` CASCADE;
DROP TABLE IF EXISTS `Auction` CASCADE;
DROP TABLE IF EXISTS `Lot` CASCADE;


CREATE TABLE `Staff`
(
StaffID 		VARCHAR(6) ,
Staffname 		VARCHAR(100),
Staffaddress	VARCHAR(100),
Staffphone		VARCHAR(12),
Job_title		VARCHAR(50),

PRIMARY KEY (StaffID)
);


CREATE TABLE `Seller`
(
SellerID 		INT(3) ,
SellerName 		VARCHAR(100),
SellerAddress	VARCHAR(100),
SellerTelephone	VARCHAR(12),

PRIMARY KEY (SellerID)
);

CREATE TABLE `Bidder`
(
BidderID 		VARCHAR(7) ,
Name 			VARCHAR(100),
Address			VARCHAR(100),
Telephone		VARCHAR(12),

PRIMARY KEY (BidderID)
);


CREATE TABLE `Auction`
(
AuctionID 		INT(1) ,
AuctionDate 	DATE,
AuctioneerID	VARCHAR(6),
AssistantID		VARCHAR(6),
Location		VARCHAR(20),

PRIMARY KEY (AuctionID),
FOREIGN KEY (AuctioneerID) REFERENCES Staff(StaffID),
FOREIGN KEY (AssistantID) REFERENCES Staff(StaffID)

);

CREATE TABLE `Lot`
(
AuctionID 		INT(1) ,
LotNumber 		INT(1),
LotDescription	VARCHAR(100),
ReservePrice	INT(4),
SellerID		INT(3),

PRIMARY KEY (LotNumber),
FOREIGN KEY (AuctionID) REFERENCES Auction(AuctionID),
FOREIGN KEY (SellerID) REFERENCES Seller(SellerID)
);

CREATE TABLE `Item`
(
ItemID 			INT(3),
LotNumber 		INT(1),
ItemDescription	VARCHAR(100),

PRIMARY KEY (ItemID),
FOREIGN KEY (LotNumber) REFERENCES Lot(LotNumber)
);

 
CREATE TABLE `LotSale`
(
SaleID 			VARCHAR(4),
BidderID 		VARCHAR(7) ,
LotNumber		INT(1),
WinningPrice	VARCHAR(100),

PRIMARY KEY (SaleID),
FOREIGN KEY (BidderID) REFERENCES Bidder(BidderID),
FOREIGN KEY (LotNumber) REFERENCES Lot(LotNumber)
);






  INSERT INTO `Staff` (`StaffID`,`Staffname`,`Staffaddress`,`Staffphone`,`Job_title`)
VALUES
  ("MAR001", 	"Moses Marsh",		"2738 Dui. St.",			"07624 433836",		"Assistant."),
  ("LAR007", 	"Kimberly Larson",	"808-6219 Ultricies Rd.",	"09057 617373",		"Assistant"),
  ("POL008", 	"Kane Pollard",		"559-9243 Accumsan St.",	"07812 584527",		"Auctioneer"),
  ("CON003",	"Lareina Conway",	"941-6642 Donec Street",	"07026 870247",		"Assistant"),
  ("MCK050", 	"Imani Mckay",		"218-4087 Turpis St.",		"08002 24786",		"Auctioneer."),
  ("GAR002",	"Paul Garner",		"914-2990 Ultrices. Street","07624 412036",		"Assistant"),
  ("FIS010", 	"Ulric Fisher",		"536-2804 Tempus Rd.",		"08002 72847",		"Auctioneer"),
  ("HUF001", 	"Peter Huff",		"6227 Sem. Road",			"01118 116234",		"Auctioneer"),
  ("RUS006", 	"Isabella Rush",	"883-1373 Elit Rd.",		"08310 594915",		"Assistant"),
  ("POT003", 	"Armand Potts",		"Ap #555-697 Arcu. St.",	"05005 16540",		"Auctioneer");
  
  
  INSERT INTO `Seller` (`SellerID`,`SellerName`,`SellerAddress`,`SellerTelephone`)
VALUES
  (100,		"Zorita Henry",		"Ap #583-2929 Lorem Street",		"08828 113112"),
  (101, 	"Xander Doyle",		"410-132 Quisque Av.",				"08454 464456"),
  (102, 	"Maia Ayala",		"Ap #709-6934 Magna. St.",			"038262 15402"),
  (103, 	"Rigel Newton",		"525-919 Scelerisque Ave",			"07624 007584"),
  (104, 	"Barry Guerrero",	"306-3955 Vehicula Ave",			"05004 535388"),
  (105, 	"Norman Wyatt",		"9496 Dolor Avenue",				"01141 098208"),
  (106, 	"Alexander Bryan",	"Ap #211-2548 A Road",				"03483 660677"),
  (107, 	"Cody Maynard",		"Ap #688-7847 Phasellus Ave",		"070052 53475"),
  (108, 	"Maryam Rivers",	"9870 Malesuada. Ave",				"08001 41187"),
  (109, 	"Ferris Gardner",	"Ap #762-2785 Elit, Avenue",		"013421 29634");
  
  INSERT INTO `Bidder` (`BidderID`, `Name`,`Address`,`Telephone`)
VALUES
  ("NOR0001", "Fredericka Norton",	"P.O. Box 253, 9650 Morbi Ave",		"05646 696460"),
  ("HES0001", "Bree Hester",		"Ap #658-6893 Fusce Av.",			"01124 255551"),
  ("HEN0005", "Upton Henson",		"4501 Nunc, Rd.",					"08009 86476"),
  ("PEN0010", "Fleur Pennington",	"Ap #936-2164 Et Ave",				"08002 76163"),
  ("COF0007", "Quemby Coffey",		"Ap #399-949 Fusce Rd.",			"08677 42177"),
  ("GAL0003", "Latifah Galloway",	"Ap #166-6167 Sed Rd.",				"07624 896264"),
  ("POT0002", "Beau Potter",		"Ap #620-6061 Sed St.",				"08454 690946"),
  ("BUR0001", "Jason Burgess",		"Ap #277-7574 Ante. Rd.",			"01697 791882"),
  ("KAU0003", "Hunter Kaufman",		"703-9663 Ut, Av.",					"07608 861515"),
  ("HOP0008", "Gavin Hopkins",		"260-1548 Auctor St.",				"08004 26439");
  
 
  

  INSERT INTO `Auction` (`AuctionID`, `AuctionDate`, `AuctioneerID`, `AssistantID`, `Location`)
VALUES
  (1,	'2023-07-11', "POL008", "FIS010", "Manchester"),
  (2, 	'2023-07-08', "POL008", "FIS010", "Bury"),
  (3, 	'2023-06-11', "POL008", "FIS010", "Burnley"),
  (4, 	'2023-07-11', "MCK050", "GAR002", "Bolton"),
  (5, 	'2023-06-13', "MCK050", "FIS010", "Preston"),
  (6, 	'2023-04-13', "HUF001", "RUS006", "Preston");
  
  INSERT INTO `Lot` (`AuctionID`, `LotNumber`,`LotDescription`,`ReservePrice`,`SellerID`)
VALUES
  (1, 1, "17th & 15th Gold Jewellery",	100,104),
  (2, 6, "9ct gold cuff links",			80, 106),
  (3, 4, "15th Century Toy Selection",	150, 108),
  (4, 5, "Flower Vase",					20, 102),
  (5, 3, "17th Century Blue China Tea Set",100, 104),
  (6, 7, "Earing and Broch Set",			80, 104),
  (6, 8, "1960s toys",						30, 108);
  
  INSERT INTO `Item` (`ItemID`,`LotNumber`,`ItemDescription`)
VALUES
  (100,1,"17th century ruby ring"),
  (101,1,"15th century gold earing"),
  (102,1,"Edwardian Bird Broch"),
  (103,6,"16th century 9ct gold cuff links"),
  (104,4,"push along dog toy"),
  (105,4,"Victorian Doll"),
  (115,4,"Victorian Dolls House"),
  (106,5,"Floral Vase"),
  (107,3,"Blue Pattern China TeaPot, 17th Century"),
  (108,3,"Blue Pattern China Cup and Saucer, 17th Century"),
  (109,3,"Blue Pattern China Milk Jug, 17th Century"),
  (110,3,"Blue Pattern China Sugar Bowl, 17th Century"),
  (111,7,"12th century white gold earings"),
  (112,7,"Victoria Emerald Broch"),
  (113,8,"Jack in the Box, 1960"),
  (114,8,"spinning top, 1960");
  
  INSERT INTO LotSale (`SaleID`, `BidderID`, `LotNumber`, `WinningPrice`)
VALUES
  ("S001", "NOR0001", 1, 150),
  ("S002", "NOR0001", 6, 120),
  ("S003", "NOR0001", 5, 40),
  ("S004", "COF0007", 3, 175),
  ("S005", "HOP0008", 4, 210),
  ("S006", "HOP0008", 7, 95),
  ("S007", "HEN0005", 8, 95);

-- QUERIES  
select * from boltonAuction.Staff;
select * from boltonAuction.Seller;
select * from boltonAuction.Bidder;
select * from boltonAuction.Auction;
select * from boltonAuction.Lot;
select * from boltonAuction.LotSale;
select*from boltonAuction.Item;

-- a) Write a query to show any lots which contain items which are Toys, you must display the lot description and the date and location of the auction.

SELECT i.LotNumber, i.ItemDescription,  l.lotDescription, AuctionDate, Location
FROM item i
inner JOIN lot l
on ItemDescription LIKE '%toy%'
inner join auction a 
on a.auctionID = l.auctionID
WHERE i.LotNumber= l.lotNumber;

-- (f.a) Query to fetch all those lots having "toy" in their description and return the LotDescription, AuctionDate and Location.
SELECT l.LotDescription, a.AuctionDate, a.Location
FROM lot l
INNER JOIN
auction a
ON l.AuctionID = a.AuctionID
WHERE lotDescription LIKE '%toy%';

-- b.) Write a query to show seller name, telephone number, lot description and Reserve Price, where they have a lot where the reserve price is more than but less than £150 and only being auctioned in Manchester.

SELECT s.SellerName, s.SellerTelephone, l.LotDescription, l.ReservePrice, a.Location
FROM seller s
INNER JOIN lot l ON s.SellerID = l.SellerID
INNER JOIN auction a ON l.AuctionID = a.AuctionID
WHERE a.Location LIKE '%Manchester%' AND l.ReservePrice > 90 AND l.ReservePrice < 150;


-- c.) Write a query to show which customer has paid the highest total price for all successful bids, you should display the bidders name which should be labelled "Bidders Name" and the total price, which should be named as "Total Price".

SELECT b.Name, sum(ls.WinningPrice) as Total_price
FROM boltonAuction.Bidder b
INNER JOIN
lotSale ls
ON ls.BidderID = b.BidderID
Group by ls.BidderID
ORDER BY Total_price DESC LIMIT 1;

-- d.) Write a query to show the total number of successful bids per customer and their name, rename the total number of bids as "Total Bids".

SELECT  b.Name AS "Customer Name" , COUNT(ls.BidderID) as Total_Bids
FROM boltonAuction.Bidder b
INNER JOIN
lotSale ls
ON ls.BidderID = b.BidderID
Group by ls.BidderID
ORDER BY Total_Bids;

-- e.) Write a query to show the lowest reserve price for a seller, rename this column "Lowest Reserve Price" and show the sellers name, rename this column as "Seller Name".

SELECT DISTINCT s.SellerName AS "Seller Name", min(l.ReservePrice) AS Lowest_Reserve_Price
FROM seller s
INNER JOIN
lot l
ON l.sellerID = s.sellerID
GROUP BY s.sellerID
ORDER BY min(l.ReservePrice) ASC;

-- F.b Query to find auction with highest total revenue . 
SELECT a.AuctionID, a.AuctionDate, a.Location, 
  (SELECT SUM(ls.WinningPrice) 
   FROM LotSale ls 
   JOIN Lot l ON ls.LotNumber = l.LotNumber 
   WHERE l.AuctionID = a.AuctionID) AS TotalRevenue
FROM Auction a
ORDER BY TotalRevenue DESC LIMIT 1;

-- Extra Queries
-- Query to fetch those auctions which have multiple lots.
SELECT AuctionID, COUNT(*) AS lot_count
FROM Lot
GROUP BY AuctionID
HAVING COUNT(*) > 1;


-- Query to find Seller with Multiple Lots
SELECT s.SellerName, a.AuctionID, COUNT(*) AS "Number of Lots"
FROM Seller s
JOIN Lot l ON s.SellerID = l.SellerID
JOIN (
    SELECT AuctionID, COUNT(*) AS lot_count
    FROM Lot
    GROUP BY AuctionID
    HAVING COUNT(*) > 1
) sub ON l.AuctionID = sub.AuctionID
JOIN Auction a ON l.AuctionID = a.AuctionID
GROUP BY s.SellerID, a.AuctionID;





  