CREATE TABLE PRODUCT (
ProductID		VARCHAR(25)		NOT NULL,
ProductName		VARCHAR(25)		NOT NULL,
ProductPrice	VARCHAR(25)		NOT NULL,
VendorID		VARCHAR(25) 	NOT NULL,
CategoryID		VARCHAR(25)		NOT NULL,

CONSTRAINT		ProductPK	PRIMARY KEY(ProductID)

);


INSERT INTO PRODUCT VALUES
('1X1', 'Zzz Bag', 100, 'PG', 'CP'),
('2X2', 'Easy Boot', 70, 'MK', 'FW'),
('3X3', 'Cosy Sock', 15, 'MK', 'FW'),
('4X4', 'Dura Boot', 90, 'PG', 'FW'),
('5X5', 'Tiny Tent', 150, 'MK', 'CP'),
('6X6', 'Biggy Tent', 150, 'MK', 'CP'),
('7X7', 'Hi-Tec GPS', 300, 'OA', 'EL'),
('8X8', 'Power Pedals', 20, 'MK', 'CY'),
('9X9', 'Trusty Rope', 30, 'WL', 'CL'),
('1X2', 'Comfy Harness', 150, 'MK', 'CL'),
('1X3', 'Sunny Charger', 125, 'OA', 'EL'),
('1X4', 'Safe-T Helment', 40, 'PG', 'CY'),
('2X1', 'Mmm Stove', 80, 'WL', 'CP'),
('2X3', 'Reflet-o Jacket', 35, 'PG', 'CY'),
('2X4', 'Strongster Carribeaner', 20, 'MK', 'CL'),
('3X1', 'Sleepy Pad', 25, 'WL', 'CP'),
('3X2', 'Bucky Knife', 60, 'WL', 'CP'),
('3X4', 'Treado Tire', 30, 'OA', 'CY'),
('4X1', 'Slicky Tire', 30, 'OA', 'CY'),
('4X2', 'Electra Compass', 45, 'MK', 'EL'),
('4X3', 'Mega Camera', 275, 'WL', 'EL'),
('5X1', 'Simple Sandal', 50, 'PG', 'FW'),
('5X2', 'Action Sandal', 70, 'PG', 'FW'),
('5X3', 'Luxo Tent', 500, 'OA', 'CP');

CREATE TABLE REGION (
RegionID		VARCHAR(25)		NOT NULL,
RegionName		VARCHAR(25)		NOT NULL,

CONSTRAINT		RegionPK	PRIMARY KEY(RegionID)

);

INSERT INTO REGION VALUES
('C', 'Chicagoland'),
('T', 'Tristate'),
('I', 'Indiana'),
('N', 'North');


CREATE TABLE CATEGORY (
CategoryID			VARCHAR(25)    NOT NULL,
CategoryName		VARCHAR(25)	   NOT NULL,

CONSTRAINT			CategoryPK	PRIMARY KEY(CategoryID)
);

INSERT INTO CATEGORY VALUES
('CP', 'Camping'),
('FW', 'Footwear'),
('CL', 'Climbing'),
('EL', 'Electronics'),
('CY', 'Cycling');

CREATE TABLE CUSTOMER_ (
CustomerID			VARCHAR(25)		NOT NULL,
CustomerName		VARCHAR(25)		NOT NULL,
CustomerZip			VARCHAR(25)		NOT NULL,

CONSTRAINT		CUSTOMERPK			PRIMARY KEY(CustomerID)
);

INSERT INTO CUSTOMER_ VALUES 
('1-2-333', 'Tina', 60137),
('2-3-444', 'Tony', 60611),
('3-4-555', 'Pam',	35401),
('4-5-666', 'Elly', 47374),
('5-6-777', 'Nora', 60640),
('6-7-888', 'Miles', 60602),
('7-8-999', 'Neil', 55403),
('8-9-000', 'Maggie', 47401),
('9-0-111', 'Ryan', 46202),
('0-1-222', 'Dan', 55499);

CREATE TABLE VENDOR (
VenderID		VARCHAR(25)		NOT NULL,
VendorName		VARCHAR(25)		NOT NULL,

);

INSERT INTO VENDOR VALUES
('PG', 'Pacifica Gear'),
('MK', 'Mountain King'),
('OA', 'Outdoor Adventures'),
('WL', 'Wilderness Limited');


CREATE TABLE STORE (
StoreID			VARCHAR(25)		NOT NULL,
StoreZip		VARCHAR(25)		NOT NULL,
RegionID		VARCHAR(25)		NOT NULL,

CONSTRAINT		StorePK			PRIMARY KEY(StoreID),
CONSTRAINT		RegionFK		FOREIGN KEY(RegionID)
								REFERENCES REGION
);

INSERT INTO STORE VALUES
('S1', 60600, 'C'),
('S2', 60605, 'C'),
('S3', 35400, 'T'),
('S4', 60640, 'C'),
('S5', 46307, 'T'),
('S6', 47374, 'I'),
('S7', 47401, 'I'),
('S8', 55401, 'N'),
('S9', 54937, 'N'),
('S10', 60602, 'C'),
('S11', 46201, 'I'),
('S12', 55701, 'N'),
('S13', 60085, 'T'),
('S14', 53140, 'T');


CREATE TABLE INCLUDES (
ProductID			VARCHAR(25)		NOT NULL,
TID					VARCHAR(25)		NOT NULL,
Quantity			VARCHAR(25)		NOT NULL,

CONSTRAINT		ProductIDTIDPK			PRIMARY KEY(ProductID, TID),
CONSTRAINT		ProductIDFK				FOREIGN KEY(ProductID)
										REFERENCES PRODUCT,
CONSTRAINT		TIDFK					FOREIGN KEY(TID)
										REFERENCES SALESTRANSACTION

);

CREATE TABLE SALESTRANSACTION (
TID				VARCHAR(25)			NOT NULL,
CustomerID		VARCHAR(25)			NOT NULL,
StoreID			VARCHAR(25)			NOT NULL,
TDate			DATE				NOT NULL,

CONSTRAINT		TIDPK				PRIMARY KEY(TID),
CONSTRAINT		CustomerIDFK		FOREIGN KEY(CustomerID)
									REFERENCES CUSTOMER_,
CONSTRAINT		StoreIDFK			FOREIGN KEY(StoreID)
									REFERENCES STORE

);

INSERT INTO SALESTRANSACTION VALUES
('T111', '1-2-333', 'S1', '1-jan-2020'),
('T222', '2-3-444', 'S3', '1-jan-2020'),
('T333', '1-2-333', 'S3', '2-jan-2020'),
('T444', '3-4-555', 'S3', '2-jan-2020'),
('T555', '2-3-444', 'S3', '2-jan-2020'),
('T666', '5-6-777', 'S10','3-jan-2020'),
('T777', '6-7-888', 'S13','3-jan-2020'),
('T888', '8-9-000', 'S13', '3-jan-2020'),
('T999', '4-5-666', 'S4', '4-jan-2020'),
('T101', '7-8-999', 'S12', '4-jan-2020'),
('T202', '0-1-222', 'S8', '4-jan-2020'),
('T303', '4-5-666', 'S6', '5-jan-2020'),
('T404', '8-9-000', 'S6', '5-jan-2020'),
('T505', '6-7-888', 'S14', '5-jan-2020'),
('T606', '0-1-222', 'S11', '6-jan-2020'),
('T707', '5-6-777', 'S4', '6-jan-2020'),
('T808', '7-8-999', 'S9', '6-jan-2020'),
('T909', '6-7-777', 'S4', '6-jan-2020'),
('T011', '8-9-000', 'S7', '7-jan-2020'),
('T022', '9-0-111', 'S5', '7-jan-2020');

INSERT INTO INCLUDES VALUES
('1X1', 'T111','1'),
('2X2', 'T222','1'),
('3X3', 'T333', '5'),
('1X1', 'T333', '1'),
('4X4', 'T444', 1),
('2X2', 'T444', 2),
('4X4', 'T555', 4),
('5X5', 'T555', 2),
('6X6', 'T555', 1),
('7X7', 'T666', 1),
('9X9', 'T666', 1),
('1X3', 'T666', 2),
('8X8', 'T777', 1),
('1X4', 'T888', 4),
('2X3', 'T888', 4),
('9X9', 'T999', 1),
('1X2', 'T999', 5),
('8X8', 'T999', 3),
('1X3', 'T999', 1),
('1X2', 'T101', 3),
('1X4', 'T101', 3),
('2X4', 'T202', 4),
('9X9', 'T303', 3),
('1X4', 'T303', 3),
('2X4', 'T202', 4),
('9X9', 'T303', 3),
('1X4', 'T303', 3),
('2X1', 'T303', 2),
('3X1', 'T303', 2),
('2X4', 'T404', 1),
('2X3', 'T404', 2),
('2X2', 'T505', 3),
('3X2', 'T505', 1),
('2X1', 'T505', 4),
('2X4', 'T606', 7),
('3X1', 'T606', 4),
('2X2', 'T606', 3),
('3X4', 'T606', 3),
('4X4', 'T606', 2),
('3X2', 'T707', 1),
('3X4', 'T707', 4),
('4X1', 'T707', 2),
('5X3', 'T808', 1),
('4X2', 'T808', 1),
('2X2', 'T808', 1),
('4X3', 'T808', 1),
('3X3', 'T808', 4),
('4X2', 'T909', 3),
('6X6', 'T909', 3),
('3X3', 'T011', 3),
('4X3', 'T022', 3),
('2X2', 'T022', 3),
('5X1', 'T022', 2);