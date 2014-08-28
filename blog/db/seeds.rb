# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
Post.create(title: "TDD", abstract:"blog blog blog. blog blog blog. so much blogging. all this text. it is so much text. song lyrics go here. so much lyrics. ooo I just did word wrap and now its so much better and I can see everything. more blog blog blog. ipsum lorem dolor this something something", date: "july 20, 2014", file: "TDD.md")
Post.create(title: "test", abstract:" HELLO WORLD blog blog blog. blog blog blog. so much blogging. all this text. it is so much text. song lyrics go here. so much lyrics. ooo I just did word wrap and now its so much better and I can see everything. more blog blog blog. ipsum lorem dolor this something something", date: "july 20, 2014", file:"test.md")
