# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

lessons = Lesson.create([
	{
		StartTime: DateTime.new(2015,9,1,17,00),
		EndTime: DateTime.new(2015,9,1,18,00),
		location: "New York City",
		category: "Arts",
		name: "Painting",
		price: 5.00,
		capacity: 20,
		description: "Expect nude models",
		langauge: "body langauge"
	}])
