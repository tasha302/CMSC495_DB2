Jessica Fritschle, Jeremy Worthy, Ellis Hunter, Michael Goetschius,
Abimbola Otugalu

**\
**

Copyright and third-party information as required

**\
**

Document Revisions {#document-revisions .TOCHeading}
==================

  Date         Version Number   Document Changes
  ------------ ---------------- ------------------
  03/30/2018   1.0              Initial Draft
                                
                                
                                
                                
                                
                                
                                
                                

 {#section .TOCHeading}

 {#section-1 .TOCHeading}

Table of Contents {#table-of-contents .TOCHeading}
=================

1 Introduction 4

1.1 Scope and Purpose 4

1.2 Process Overview 4

2 Process 6

2.1 Install Application / Missing Software 6

2.1.1 \[Procedures for Step 1\] Example: To Log in to Connect: 6

2.1.2 \[Procedures for Step 2\]: 7

2.2 \[Sub-Process or Workflow Step 2\] Example: Asset Record Statuses 7

3 Appendices 9

4 Index 10

Introduction 
=============

Scope and Purpose
-----------------

DB2 is a generic inventory tracking application that will allow business
managers and owners to track items in stock, orders, sales, customer
information, and other relevant information. The application has
enhanced search/reporting functionality as well as a threshold alerting
system.

This guide assumes that user has no prior knowledge of database
management and functionality. All features and usage of the application
are explained in a detailed format.

Process Overview 
-----------------

1.  Install Application

2.  Create or Load Tables

3.  Set Alert Functionality

4.  Searching Tables

5.  Generating Reports

\[Process\]
===========

![](media/image1.png){width="6.0in" height="3.717361111111111in"}

Installation:
-------------

MySQL:

1.  Download software from <https://dev.mysql.com/downloads/>

2.  Unzip the package.

3.  Run the setup.exe file.

4.  Everything should be installed in C:\\mysql

5.  Click Windows start icon ![](media/image2.png){width="0.5in"
    height="0.4479166666666667in"}

6.  Type run in the search bar and hit enter

7.  The window below opens up, click ok if cmd is already there if not
    type cmd and click ok.

![](media/image3.png){width="4.166666666666667in"
height="1.6770833333333333in"}

8.  Type cd C:\\mysql\\bin then press enter key

9.  Type mysqld.exe --console then press enter key

10. Startup message should appear. You are connected.

Java IDE:

.

### \[Install Application\] 

1.  Do something.

<!-- -->

6.  Complete an action.

7.  Select a value.

8.  Enter some text.

9.  Drag and drop a value.

10. Click or press something to complete the procedure.

    **Notes, Cautions or Warnings need to go here:**

###  \[Create User\]:

1.  Steps to create administrator and users for mysql go here and screen
    shots

<!-- -->

a)  Do the first thing

b)  When something happens, do the next thing.

c)  Click a button or a link.

d)  Enter some data.

e)  Complete the action.

<!-- -->

11. Complete an action using one of the following options:

-   Option 1

a)  Click somewhere.

<!-- -->

f)  Enter something.

-   Option 2

a)  Click somewhere.

<!-- -->

g)  Enter something.

<!-- -->

12. Select a value.

13. Enter some text.

14. Click or press something to complete the procedure.

\[Create or Load Tables\] The following tables come standard with the DB2 Inventory Management Application
----------------------------------------------------------------------------------------------------------

  Table           Description
  --------------- -------------------------------------------------------------------------------------------------
  Items           Stores information about items available in inventory such as quantity and vendor.
  SalesDetails    Stores actual items per sale
  Sales           Stores basic information about sales to customers
  OrdersDetails   Stores actual items ordered per order
  Orders          Stores basic information about orders made to ventors such as items ordered, date, and quantity
  Customers       Stores information about customers such as contact information
  Vendors         Stores information on vendors such as name, poc, and contact info
  Invoices        Stores information about invoice details such as invoice number, order number, and date
  Payments        Stores payment information to vendors (invoice number, vendor id, bill total, bill balance.

Create Alert Functionality
--------------------------

> Here we show how to set thresholds for alerts such as item out, item
> low, items expiring.

### Item Out

### Item Low

### Item Expiring

Searching Tables
----------------

Creating Reports
----------------

Appendices
==========

\[Appendices are optional, and are used to provide additional detailed
information that may help the end user manage the overall application.
Examples could include references to standards (such as W3C standards),
technical specifications required for regulatory compliance, checklists,
or other information of a technical nature.\]
