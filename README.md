# usage_tracking
A project to build all the code you need for analysing OBIEE Usage.  Starts with normal usage table.


The general plan:

Part A: Logical Requests.

Configure Out of the Box Usage Tracking.  (except Remove indexes from the OOTB tables.)
This captures the usage into the (rcu'd) Repository table.
Overnight ETL (using ODI) into a warehouse table.
Build a full star - Facts and Dimensions, from the initial table.  Dimensions include Date, Dashboard, Users, Types, Servers, etc
Build some aggregtion tables - look at Summary Aggregation and Point in time Totals (for time series analyses)

Incorporate into an RPD

Build some dashboards


Part B: Physical
As above, but for the Physical SQL

Part C:  BI Publisher Logging
tbc incorporating into the above

Part D:  Build an Apex App to manage the Master Data.



This page was Built by Adrian Ward at blog.obiee.info
