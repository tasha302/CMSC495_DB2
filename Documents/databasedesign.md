SQL Script:

CREATE TABLE Customer

(

customer\_id INT NOT NULL,

first VARCHAR(255) NOT NULL,

last VARCHAR(255) NOT NULL,

phone\_no INT NOT NULL,

street\_name VARCHAR(255) NOT NULL,

state VARCHAR(2) NOT NULL,

zip\_code INT NOT NULL,

city VARCHAR(255) NOT NULL,

PRIMARY KEY (customer\_id)

);

CREATE TABLE Vendor

(

vendor\_id INT NOT NULL,

company\_name VARCHAR(255) NOT NULL,

street\_name VARCHAR(255) NOT NULL,

city VARCHAR(255) NOT NULL,

state VARCHAR(2) NOT NULL,

zip\_code INT NOT NULL,

phone\_no VARCHAR(255) NOT NULL,

company\_poc INT NOT NULL,

PRIMARY KEY (vendor\_id)

);

CREATE TABLE Vendor\_Order

(

vendor\_order\_id INT NOT NULL,

item\_id INT NOT NULL,

date DATE NOT NULL,

quantitiy\_ordered INT NOT NULL,

vendor\_id INT NOT NULL,

PRIMARY KEY (vendor\_order\_id),

FOREIGN KEY (vendor\_id) REFERENCES Vendor(vendor\_id)

);

CREATE TABLE Vendor\_Invoice

(

vendor\_invoice\_id INT NOT NULL,

vendor\_id INT NOT NULL,

date\_created INT NOT NULL,

date\_due INT NOT NULL,

total\_billed INT NOT NULL,

order\_id INT NOT NULL,

vendor\_id INT NOT NULL,

PRIMARY KEY (vendor\_invoice\_id),

FOREIGN KEY (vendor\_id) REFERENCES Vendor(vendor\_id)

);

CREATE TABLE Customer\_Order

(

customer\_order\_id INT NOT NULL,

item\_id INT NOT NULL,

date DATE NOT NULL,

quantity\_ordered INT NOT NULL,

customer\_id INT NOT NULL,

PRIMARY KEY (customer\_order\_id),

FOREIGN KEY (customer\_id) REFERENCES Customer(customer\_id)

);

CREATE TABLE Customer\_Invoice

(

customer\_invoice\_id INT NOT NULL,

date\_created\_(index?) DATE NOT NULL,

total\_billed INT NOT NULL,

order\_id INT NOT NULL,

customer\_order\_id INT NOT NULL,

customer\_id INT NOT NULL,

PRIMARY KEY (customer\_invoice\_id),

FOREIGN KEY (customer\_order\_id) REFERENCES
Customer\_Order(customer\_order\_id),

FOREIGN KEY (customer\_id) REFERENCES Customer(customer\_id)

);

CREATE TABLE Sales

(

sales\_id INT NOT NULL,

customer\_id INT NOT NULL,

customer\_order\_id INT NOT NULL,

bill\_total FLOAT NOT NULL,

total\_paid FLOAT NOT NULL,

PRIMARY KEY (sales\_id),

FOREIGN KEY (customer\_id) REFERENCES Customer(customer\_id),

FOREIGN KEY (customer\_order\_id) REFERENCES
Customer\_Order(customer\_order\_id)

);

CREATE TABLE Payment

(

payment\_id INT NOT NULL,

vendor\_id INT NOT NULL,

bill\_total FLOAT NOT NULL,

total\_paid FLOAT NOT NULL,

balance FLOAT NOT NULL,

payment\_date DATE NOT NULL,

vendor\_invoice\_id INT NOT NULL,

PRIMARY KEY (payment\_id),

FOREIGN KEY (vendor\_id) REFERENCES Vendor(vendor\_id),

FOREIGN KEY (vendor\_invoice\_id) REFERENCES
Vendor\_Invoice(vendor\_invoice\_id)

);

CREATE TABLE Item\_Expiration

(

item\_exp\_id INT NOT NULL,

exp\_date DATE NOT NULL,

item\_id INT NOT NULL,

PRIMARY KEY (item\_exp\_id),

FOREIGN KEY (item\_id) REFERENCES Item\_Description(item\_id)

);

CREATE TABLE Item\_Description

(

item\_id INT NOT NULL,

name VARCHAR(255) NOT NULL,

picture Image NOT NULL,

paragraph VARCHAR(255) NOT NULL,

item\_exp\_id INT NOT NULL,

PRIMARY KEY (item\_id),

FOREIGN KEY (item\_exp\_id) REFERENCES Item\_Expiration(item\_exp\_id),

UNIQUE (name)

);

CREATE TABLE Inventory

(

inventory\_id INT NOT NULL,

quantity\_ordered INT NOT NULL,

cost\_(index?) FLOAT NOT NULL,

item\_id\_(index) INT NOT NULL,

vendor\_id\_(index) INT NOT NULL,

PRIMARY KEY (inventory\_id),

FOREIGN KEY (item\_id) REFERENCES Item\_Description(item\_id),

FOREIGN KEY (vendor\_id) REFERENCES Vendor(vendor\_id)

);

CREATE INDEX idx\_name

ON Customer(last, first);

CREATE INDEX idx\_cost

ON Inventory(cost);

CREATE INDEX idx\_item

ON Inventory(item\_id);

CREATE INDEX idx\_vendor

ON Inventory(vendor\_id);

CREATE INDEX idx\_name

ON Item\_Description(name);

CREATE INDEX idx\_date\_created

ON Customer\_Invoice(date\_created);

CREATE INDEX idx\_date

ON Customer\_Order(date);

CREATE INDEX idx\_date\_created

ON Vendor\_Invoice(date\_created);

CREATE INDEX idx\_date

ON Vendor\_Order(date);

CREATE INDEX idx\_name

ON Vendor(company\_name);

![](media/image1.png){width="6.5in" height="7.254166666666666in"}

![](media/image2.png){width="6.5in" height="4.145833333333333in"}
