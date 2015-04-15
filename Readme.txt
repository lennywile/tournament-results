Readme.txt

Lenny Wile
04/14/2015

Project 2 - The Tournament Planner

This is an application that uses a PostgreSQL database to store player and match information, allowing for Swiss system
to pair players for subsequent matches.

Files

tournament.py - Python code that manipulates the database to add and delete players and matches, as well as
		determine the next pairings.

tournament_test.py - Test cases that run the functions defined in tournament.py


tournament.sql - PostgreSQL commands that setup the Tournament database, including tables and a view definition


How to Run the Code

1. Create the Tournament database.

	a. From the /vagrant/tournament$ prompt, run psql
	b. From the vagrant=> prmopt, run create database Tournament;
	c. Run \q to exit psql

2. Load the PostgreSQL schema.

	a. From the /vagrant/tournament$ prompt, run psql tournament < tournament.sql
	
3. Run the test cases.

	a.  From the /vagrant/tournament$ prompt, run python tournament_test.py


	