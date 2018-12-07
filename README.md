# lpro_cc
Coding challenge
Analytics & Reporting Structure & Visualization - Notes

Data Mart
Please allow me to preface your review of the submitted db backup and associated code & viz’s by stating that this is not how i would do this in real life, but I hope that you will see what I’m delivering as a creative way of solving a problem with the resources at my disposal.

Tools Utilized
MySQL Community 8.0
Domo 

The assessment data mart is, in theory,  comprised of five tables in a dimensional/star schema - `litpro_analytic_amy`.  Please refer to 

ETL?  Rudimentary!  I loaded the data mart tables using MySQL export/import and update statements.
It took about  3 hours to import 38k rows of the 93k rows from the assessment source table.  
The end result is that the data mart is data free!  I decided to focus on other tasks instead of continuing down the path of most resistance.

I chose not to create a different id/PK for the mart tables, as the id from the OLTP system is unique.  

When building this for reals, I would create additional technical metadata columns such as type of source system(i.e. database, file) 

Based on business requirements, I might also include an indicator field to indicate if the record is the most current instead of using a date field to constrain on queries when the table is designed as a type 2 slowly changing dimension.

Dashboard

You all should have received an invitation to join the https://kimeyer.domo.com Domo instance.
Once you’re logged in you will see The CommunityPro Analytics page link, with a sub-page for Assessment Dashboard.

DB query efficiency
Provide metrics on this query as is.

Improve the query and explain your changes (We plan on testing the updated query on a
AWS RDS database instance with 2 vCPUs, 8 GB of memory, and a max of 1,000 IOPS
[db.m4.large]).
This query was actually the only thing that performed well for me!  .18 second execution time.  I’m going to leave it at that for now.

My experience with AWS RDS is limited, so these items would require further research & self-education
? Explain any considerations you took into account after reviewing the resource
constraints on the RDS instance.
? Explain how you analyze poor performing queries on an AWS RDS instance.

DB Architecture
I don't feel like I have enough information or time to provide valuable insight on the CommunityPro OLTP database.

From a high level, there appears to be consistency among the table structures & naming conventions.
With regard to naming conventions, best practice is to not pluralize table names (customer v. customers)

3rd Party Source Systems
How can we work with 3rd party source systems to more easily get data from them? Describe
any experiences you've had with this and/or ideas that would facilitate the acquisition of data
from 3rd party source systems. Currently we are working with APIs and CSV files but the way
we get the files is varied based on source system.

I have worked with data from many systems and it is different with each one.
The options I've utilized most recently:

 APIs - depending on the source and proprietary code, it doesn't always get you everything that is required

Scheduled Exports - some systems allow automated data exports of CSV files to be scheduled.  some also will email that export.  
I have used Box as a landing spot for files - Box will provide an email address for a specific folder.  
Some ETL tools can grab files off of Box or Box has an Export plug-in, as well as API access. It even has some data governance functionality & some data transform ability.
 
Understanding Data
How would you integrate a master data management system to help track and understand
metadata for hundreds/thousands of data points from multiple source systems that we do not
control?
For example we collect a data point called "Highest education level upon entry" from various
systems but it carries a slightly different meaning depending on which system it comes from.
How can we best track our understanding of that data

Consistifying (is that a word?) and consolidating disparate data is essential to gaining trust in applications
that use that data.
One technique that I have utilized is the Data Domain which is basically reference tables that standardize
data elements by programmatically applying business & technical rules. Of course, those rules have to be defined

There are MDM specific tools available to facilitate this process and some software that has other purposes (ETL tools, Data Modeling tools) that incorporate MDM functionality.
A shared MDM repository would be a huge asset to LiteracyPro - bi-directional consistency between operational applications & analytic databases.


My Feedback & Other Info 

What a great opportunity this Coding Challenge was - thank you!
And also a big ask.  
Even without without my technical difficulties, I don't think 8 hrs is sufficient to deliver quality output.  Going off to develop something without collaboration or the ability to ask questions (i have lots of them!) is not ideal.  I know I could have reached out but most of my work on this has been late night. 
I have a documented, yet agile, process that I use to create & populate masterpiece data structures & related applications.  
I hope that my concept, intention & effort shine through and counts for something - my time is valuable and I very much appreciate that I will be compensated for it.  

This exercise took me appx 16 woman hours, somewhat based on needing to install MySQL db engine and 
resolve conflicts with my existing SQL Server instance and performance issues.
I ended up uninstalling SQL Server which helped, but performance continues to be less than optimal on my 
Windows 10 laptop.  And we're not even talking about a lot of data! 

For example, it took 3 processing hours to partially populate the assessment_fact table (90k source rows > 38k rows). I killed it so I could move forward.

Because it took longer to complete the Analytics & Reporting Structure & Visualization, I did not take as much time as I would have liked on the remaining topics. Less sock knocking delivery.   

I wanted to use Domo for the dashboard/visualization, as it is the  most recent tool I've used.  It took some negotiating to setup a free trial/POC account with a gmail address (Domo requires a business email address).
Once I got a Domo account setup, I wasn't able to use the direct connect to MySQL so I ended up exporting the data mart tables to text files and importing them into Domo, where I created an ETL workflow to join the tables.

I’m curious about other candidates results.

