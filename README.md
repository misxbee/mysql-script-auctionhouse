# mysql-script-auctionhouse
Developing an interactive information system for the Auction House with SQL🛍️ | Increasing productivity, scalability, and transitioning to sales via the internet 💻

How Auction House Works?
A "LOT" is a single object or collection of goods that will be auctioned together. Every lot has a reserve price that cannot be lowered.
Individual lots are put up for sale by sellers by leaving their belongings at the auction warehouse as long as two weeks before to the event. Workers at the warehouse complete a form with the seller's name and address, as well as the lot description, reserve price, and auction date for each item. As lots arrive, the warehouse employees assign lot numbers.They start at 1 for every auction and have never gone beyond 100. Each lot has a tag affixed to identify it. Currently, all items sold by a seller are subject to a 10% commission; no additional fees apply.
When bidders come on the day of the auction, they are handed a numbered plaque to hold up when placing a bid in addition to giving in a deposit cheque for £100. Dealers in particular have the ability to purchase many lots. Each bidder's plaque number is manually entered into the spreadsheet.
The auction is led by an auctioneer, who has at least one helper. They go through an auction lot list that the warehouse employees have put up, which includes information on each property, including the reserve price, in lot number order. The spreadsheet has a column where the auctioneer may record the number of the winning bidder and the total amount paid if the lot is sold. 
Following the auction, bidders turn in their plaques to the assistant. If their bids are successful, they also confirm the pieces they have bought, submit their personal information, pay the bill (less the £100 deposit), and schedule delivery or pickup. They get their deposit cheque returned if they haven't made any purchases. 

QUERIES to solve for the AUCTION HOUSE!?!

a) Write a query to show any lots which contain items which are Toys, you must
display the lot description and the date and location of the auction.
b) Write a query to show seller name, telephone number, lot description and
Reserve Price, where they have a lot where the reserve price is more than £90
but less than £150 and only being auctioned in Manchester.
c) Write a query to show which customer has paid the highest total price for all
successful bids, you should display the bidders name which should be labelled
"Bidders Name" and the total price, which should be named as "Total Price".
d) Write a query to show the total number of successful bids per customer and
their name, rename the total number of bids as "Total Bids".
e) Write a query to show the lowest reserve price for a seller, rename this
column "Lowest Reserve Price" and show the sellers name, rename this
column as "Seller Name".
f) Write 2 new queries and run each one in MySQL and MongoDB, it is expected
that you will use advanced features and explain the purpose of each query.

In the SQL file, a database named "Bolton Auction" is created with tables namely "staff", "bidder", "seller", "auction", "lot", "lotsale" and "item".
The data is inserted into these tables. Then, the queries are resolved.



