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
		langauge: "body langauge",
		host_id: 1
	}, {
		StartTime: DateTime.new(2014,9,1,13,00),
		EndTime: DateTime.new(2015,9,1,15,00),
		address: "3893 Old Creek Rd Troy MI, 48084",
		category: "Sports",
		name: "stripping",
		price: 0,
		capacity: 16,
		description: "Bring cleats!",
		langauge: "English",
		host_id: 2
	}, {
		StartTime: DateTime.new(2014,9,1,13,00),
		EndTime: DateTime.new(2015,9,1,15,00),
		location: "Michigan",
		category: "Sports",
		name: "Football",
		price: 0,
		capacity: 16,
		description: "Bring cleats!",
		langauge: "English",
		host_id: 2
	},{
		StartTime: DateTime.new(2014,9,1,13,00),
		EndTime: DateTime.new(2015,9,1,15,00),
		location: "Ohio",
		category: "Arts",
		name: "Scupturing",
		price: 0,
		capacity: 16,
		description: "Bring cleats!",
		langauge: "English",
		host_id: 2
	},{
		StartTime: DateTime.new(2014,9,1,13,00),
		EndTime: DateTime.new(2015,9,1,15,00),
		location: "Cali",
		category: "Sports",
		name: "Tennis",
		price: 0,
		capacity: 16,
		description: "Bring cleats!",
		langauge: "English",
		host_id: 2
	},{
		StartTime: DateTime.new(2014,9,1,13,00),
		EndTime: DateTime.new(2015,9,1,15,00),
		location: "Florida",
		category: "Sports",
		name: "Basketball",
		price: 0,
		capacity: 16,
		description: "Bring cleats!",
		langauge: "English",
		host_id: 2
	}
	])




