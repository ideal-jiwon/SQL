CREATE TABLE INCLUDES(

ProductID,			varchar(25)			NOT NULL,
TID					varchar(25)			NOT NULL,
Quantity			varchar(25)			NOT NULL,


CONSTRAINT ProductID_TID_PK  PRIMARY KEY(ProductID,TID),
CONSTRAINT ProductID_FK	 FOREIGN KEY(ProductID)
						 REFERENCES PRODUCT_,
CONSTRAINT TIDFK		 FOREIGN KEY(TID)
						 REFERENCES SALESTRANSACTION
						 );


INSERT INTO INCLUDES VALUES

('1X1', 'T111', '1'),
('2X2', 'T222', '1'),
('3X3', 'T333', '5'),
('1X1', 'T333', '1'),
('4X4', 'T444', '1'),
('2X2', 'T444', '2'),
('4X4', 'T555', '4'),
('5X5', 'T555', '1'),
('6X6', 'T555', '1'),
('7X7', 'T666', '1'),
('9X9', 'T666', '1'),
('1X3', 'T666', '2'),
('8X8', 'T777', '1'),
('1X4', 'T888', '4'),
('2X3', 'T888', '3'),
('9X9', 'T999', '1'),
('1X2', 'T999', '5'),
('8X8', 'T999', '3'),
('1X3', 'T999', '1'),
('1X2', 'T101', '3'),
('1X4', 'T101', '1'),
('2X4', 'T202', '4'),
('9X9', 'T303', '3'),
('1X4', 'T303', '2'),
('2X1', 'T303', '2'),
('3X1', 'T303', '2'),
('2X4', 'T404', '1'),
('2X3','T404', '2'),
('2X2', 'T505', '3'),
('3X2','T505', '1'),
('2X1', 'T505', '4'),
('2X4', 'T606', '7'),
('3X1','T606', '4'),
('2X2','T606','3'),
('3X4','T606','2'),
('4X4','T606','2'),
('3X2','T707','1'),
('3X4','T707','4'),
('4X1','T707','2'),
('5X3','T808','1'),
('4X2','T808','1'),
('2X2','T808','1'),
('4X3','T808','1'),
('3X3','T808','4'),
('4X2','T909','3'),
('6X6','T909','1'),
('3X3','T011','3'),
('4X3','T022','3'),
('2X2','T022','3'),
('5X1','T022','2');
