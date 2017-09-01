# README


Brief application web : Les Bons Amis

Ruby version : 2.4.1

System dependencies

 * gem Clearance use for authentification
 * gem money-rails for money type 
 * gem bootsrap for stylesheets 
 * gem jquery for bootstrap 
 * gem bcrypt for authentification
 * gem sqlite3 for data base
 * gem bcrypt with ruby platform defined to manage windows environment Problem (32bit running in 64bits)

Database creation
 * 1. run > rake db:migrate to get the database sqlite 	
 * 2. run > rake db:seed to get users in data base 
 	this create Users : 
	{id: 0, name: 'Camille', email: 'camille@hmail.com', password: 'secret'}
	{id: 1, name: 'Paul', email: 'pa@mail.com', password: 'pa'}
	{id: 2, name: 'Marine', email: 'ma@mail.com', password: 'ma'}
	{id: 3, name: 'Johan', email: 'johandumouchel@gmail.com', password: 'jo'}

