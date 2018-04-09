**DB2 Inventory Management Project**

**Prepared by:**

Ellis Hunter

Jessica Fritschle

Abimbola Otugalu

Jeremy Worthy

Michael Goetschius

**CMSC 495\
Prof. Metallo**

**[\
]{.underline}**

Contents {#contents .TOCHeading}
========

[Test Plan Identifier 2](#_Toc510076773)

[Introduction 2](#introduction)

[Test Items 2](#test-items)

[Approach 3](#approach)

[Pass/Fail Criteria 3](#passfail-criteria)

[Suspension Criteria 3](#suspension-criteria)

[Test Deliverables 3](#test-deliverables)

[Testing Tasks 4](#testing-tasks)

[Environment 5](#environment)

[Responsibilities 5](#responsibilities)

[Risks 6](#risks)

[References 6](#references)

[]{#_Toc510076773 .anchor}

Test Plan Identifier
====================

DB2 Inventory Management Project-01

Introduction
============

The purpose of this document is to define the testing approach for the
DB2 Inventory Management Project. The first part of the application that
will be tested is the data collection portion. This application allows
business managers and owners to track items in stock, orders, sales,
customer information, and other relevant information. This capability
will be used to see what areas do not have many customers and use that
information to do targeted marketing and advertise in those areas that
do not appear to know about the business. It will also allow for
business managers to track inventory on hand and what items need to be
ordered. This makes ordering inventory much more efficient. Rather than
counting numerous items in a storage room, a search can be run with the
app that tells them what needs to be ordered. The second part of the
application to be tested is the notification function, which allows
management to be notified when items will expire so that specials could
be run ahead of time and they would know what needs to be taken off the
shelf once it is past its expiration date.

Test Items
==========

All requirements and use cases from the Project Plan will have test
cases developed and executed.

  Input / Output                                                                                        
  ---------------------------------- ------------------------------------------------------------------ --------------------------------------------------------
  Task                               **Input**                                                          **Output**
  User Authentication                User Name and Password                                             Navigation to Main Menu if successful or error message
  Create New Records for Items       Click New Item Button/Insert Mandatory Fields                      Record is added
  Create New Records for Orders      Click New Order Button/Insert Mandatory Fields                     Record is added
  Create New Records for Vendors     Click New Vendor Button/Insert Mandatory Fields                    Record is added
  Create New Records for Sales       Click New Sales Button/Scan a Barcode or Insert Mandatory Fields   Record is added
  Create New Records for Customers   Click New Customer Button/Insert Mandatory Fields                  Record is added
  Create New Records for Invoice     Click New Invoice Button/Insert Mandatory Fields                   Record is added
  Create New Records for Items       Click New Item Button/Insert Mandatory Fields                      Record is added
  View / Modify Records              Click on View/Modify Records Button                                Database Workspace is Opened with All Tabs visible
  Save changes                       Make changes and click save                                        Confirm dialog
  Delete inspection                  Click Delete                                                       Confirm dialog
  Reporting                          Click on Reports Button                                            Navigation to the Reporting page
  Generate reports                   Select generate reports and select filters                         Selected filtered report
  Alert Messaging                    Click Notification Button                                          Navigation to Notification Page
  Set Alert Frequency                Set Reminder Date for Threshold Items                              Confirm dialog

Approach
========

Testing will be performed after each phase of development and will be
broken into three cycles. The first cycle of each phase will be Smoke
Testing and will be performed manually by the Design Lead to ensure that
the code works at the most basic level. Peer reviews of the code will
also take place now to ensure best practices are implemented and provide
feedback for future phases. The second cycle of testing will be System
Integration Testing. This cycle will test that the system functions
correctly from end to end based on the system requirements. Test cases
will be automated so that they can be executed in future phases as
regressions tests. The last cycle of testing will be User Acceptance
Testing. This cycle ensures that the application meets the end user's
expectations regarding functionality and usability and will be performed
manually. Manual Test cases will be created and executed via the
Application.

Pass/Fail Criteria
==================

Test cases will be considered passed only if the actual results match
the expected results. Otherwise, they will be considered failed.

Suspension Criteria
===================

Testing will be suspended only if the environment is unavailable or a
major defect is discovered with no acceptable workaround. Testing will
resume once the environment is restored or the defect is resolved.

Test Deliverables
=================

  Deliverable                     Description
  ------------------------------- ---------------------------------------------------------------------------------------------------
  Test Plan                       Document to provide overall guidance on the testing efforts
  Smoke Test Cases                Manual test cases to ensure the application works at the most basic level
  System Integration Test Cases   Automated test cases to ensure that the system functions correctly from an end to end perspective
  User Acceptance Test Cases      Manual test cases to ensure that the application meets the end user's expectations
  Phase Testing Report            Report to convey testing results at the end of each phase to the relevant stakeholders
  Final Test Report               Report to convey all test results from each phase to the relevant stakeholders

Testing Tasks
=============

  Phase 1                                              
  -------------------------------------- ------------- --------------
  Task                                   **Owner**     **Due Date**
  Create Smoke Test Cases                Design Lead   04/5/2018
  Execute Smoke Testing                  Design Lead   04/5/2018
  Create System Integration Test Cases   Test Lead     04/6/2018
  Execute System Integration Testing     Test Lead     04/6/2018
  Create User Acceptance Test Cases      Team          04/7/2018
  Execute User Acceptance Testing        Team          04/7/2018
  Create Phase End Test Report           Test Lead     04/9/2018

  Phase 2                                              
  -------------------------------------- ------------- --------------
  Task                                   **Owner**     **Due Date**
  Create Smoke Test Cases                Design Lead   04/17/2018
  Execute Smoke Testing                  Design Lead   04/17/2018
  Create System Integration Test Cases   Test Lead     04/18/2018
  Execute System Integration Testing     Test Lead     04/18/2018
  Create User Acceptance Test Cases      Team          04/19/2018
  Execute User Acceptance Testing        Team          04/19/2018
  Create Phase End Test Report           Test Lead     04/21/2018

  Phase 3                                              
  -------------------------------------- ------------- --------------
  Task                                   **Owner**     **Due Date**
  Create Smoke Test Cases                Design Lead   04/23/2018
  Execute Smoke Testing                  Design Lead   04/23/2018
  Create System Integration Test Cases   Test Lead     04/24/2018
  Execute System Integration Testing     Test Lead     04/24/2018
  Create User Acceptance Test Cases      Team          04/25/2018
  Execute User Acceptance Testing        Team          04/25/2018
  Create Final Test Report               Test Lead     04/27/2018

Environment
===========

The test environment will need to be set up with the following
specifications:

  ------------------ -------------------------------- -----------------------------------------------------------------
  **Requirements**   **Client Side**                  **Web Server**
  Operating System   Windows                          Windows Server
  Web Browser        Firefox, Internet Explorer       NA
  Software           Adobe Reader, PDF print driver   IIS
  Hardware           Windows tablet or PC             x86 or x64 computer
  Network            Internet access                  Internet access
  Database           NA                               SQL Server 2008 (for the class project SQL Server Express 2014)
  ------------------ -------------------------------- -----------------------------------------------------------------

Responsibilities
================

  -------------------- -------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  **Team Member**      **Role**       **Responsibilities**
  Abimbola Otugalu     Project Lead   Ensure testing timeline is on track, Support testing efforts as needed, facilitate communication between teammates, Perform peer code review
  Jeremy Worthy        Design Lead    Create and execute smoke test cases, Assist with defect resolution, Retest fixed defects
  Michael Goetschius   Design Lead    Provide defect fixes, assist with defect severity and priority classification, Support testing efforts as needed
  Jessica Fritschle    Test Lead      Create and execute System Integration Test Cases, assist with defect severity and priority classification, create test reports, Manage defect tracking and resolution, Retest fixed defects
  Ellis Hunter         Test Lead      Create and execute System Integration Test Cases, assist with defect severity and priority classification, create test reports, Manage defect tracking and resolution, Retest fixed defects
  -------------------- -------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Risks
=====

  Risk                                                                                                                                          Mitigation
  --------------------------------------------------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------
  Due to the short timeline of the project, any critical defects or environmental outages could have a serious impact on the overall timeline   Work as quickly as possible to resolve issues and increase efforts to regain any lost time

References
==========

  \#   Document Name                                       Version
  ---- --------------------------------------------------- -------------------
  1    Project Plan for DB2 Inventory Management Project   1.0
  2    IEEE Standard for Software Test Documentation       IEEE Std 829-1998
