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

profile = Profile.create(
{
	name: "Richard Lin",
	photo: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xtp1/v/t1.0-9/11705122_10155909237030657_5487791262094936207_n.jpg?oh=1e91d264c5a32b1a3bdc82eda8f75830&oe=5625F5B9&__gda__=1445435772_28f00e7f42ff76b48bfdedefaf3edf03",
	description: "A traveling student with many talents",
	base: "Troy, Michigan",
	education: "Wayne State University",
	interests: "Long walks on the beach with deep life talks",
})

User.create!(
	email: "rslin93@gmail.com",
	password: "14213986AZ"
	)

