# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

comic = Category.create(name: "comic")
fiction = Category.create(name: "fiction")
nonfiction = Category.create(name: "nonfiction")

first_book = Book.create(date: "2009-09-01", name: "Lucky", author: "Gabrielle Bell", note: "Cool self-published 2006 debut", category_id: comic.id)