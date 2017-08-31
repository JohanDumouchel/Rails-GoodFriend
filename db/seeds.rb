# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
	{id: 0, name: 'Camille', email: 'ca@mail.com', password: 'ca'},
	{id: 1, name: 'Paul', email: 'pa@mail.com', password: 'pa'},
	{id: 2, name: 'Marine', email: 'ma@mail.com', password: 'ma'},
	{id: 2, name: 'Johan', email: 'johandumouchel@gmail.com', password: 'jo'}])