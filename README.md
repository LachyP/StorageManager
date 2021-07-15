# StorageManager
My goal is to develop an around-the-home long-term storage application by utilising QR codes.

I am imagining 2 main functions for this program to be successful:

The first and main function of this program will involve the scanning and producing of unique QR codes that are to be stuck onto storage boxes around the home or garage. These codes are linked to a database, where, once scanned on the phone, will reveal a list of items that are in the box that has been scanned, as well as that boxes location in the house. 

The QR codes will act as a key with which the application can refer to the database with, and each item in the "box" table will have 2 columns:
1. A list of items, stored as a string which is to be produced by stringifying an array using JSON and JQuery.
2. A location, stored as a string.

The application must be able to produce these new QR codes independently, as well as allow a way in which they can be printed from the phone application to be stuck onto boxes.


The second function function of this program will involve searching items by name. This will query the entire database of "boxes" to see if this item is located in one of them, if the item is found in the database, the user must be shown what box it is in and what location that box is supposed to be in.

This will be developed using the flutter framework as this is the framework that I have most experience with personally, and I have known it as quite an adaptive framework by being able to utilise addon features to add extensive functionality to the program, this will be necessary for camera and qr code scanning functionality, as well as for the running of a database.
