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
		location: "73 Kloof St, Gardens, Cape Town, 8001",
		category: "Arts",
		name: "Painting",
		price: 10.00,
		capacity: 15,
		description: "We will have materials available. Spend some time meeting new people and painting their faces!",
		langauge: "English",
		host_id: 1
	}, {
		StartTime: DateTime.new(2014,9,1,13,00),
		EndTime: DateTime.new(2015,9,1,15,00),
		address: "1 Bertha & Jorissen St, Johannesburg, 2000",
		category: "Sports",
		name: "Quidditch",
		price: 0,
		capacity: 20,
		description: "All equipment will be provided, but bring cleats if you have them.",
		langauge: "English",
		host_id: 2
	}, {
		StartTime: DateTime.new(2014,9,1,13,00),
		EndTime: DateTime.new(2015,9,1,15,00),
		location: "Rondebosch, Cape Town, 7700",
		category: "Education",
		name: "Cape Townian Apartheid through Literature",
		price: 0,
		capacity: 16,
		description: "Bring something to take notes.",
		langauge: "English and Afrikaans",
		host_id: 1
	},{
		StartTime: DateTime.new(2014,9,1,13,00),
		EndTime: DateTime.new(2015,9,1,15,00),
		location: "19 Park Rd, Cape Town, 8001",
		category: "Education",
		name: "Coding",
		price: 30,
		capacity: 20,
		description: "Limitied computers so bring you own if you can.",
		langauge: "C++",
		host_id: 2
	},{
		StartTime: DateTime.new(2014,9,1,13,00),
		EndTime: DateTime.new(2015,9,1,15,00),
		location: "68 Albert Road Woodstock Cape Town 7925",
		category: "Crafts",
		name: "Sewing",
		price: 2,
		capacity: 12,
		description: "Everything will be provided!",
		langauge: "TBD",
		host_id: 1
	},{
		StartTime: DateTime.new(2014,9,1,13,00),
		EndTime: DateTime.new(2015,9,1,15,00),
		location: "31 Orange Street, Gardens, Cape Town",
		category: "Education",
		name: "History",
		price: 0,
		capacity: 16,
		description: "Come and learn about world history.",
		langauge: "English",
		host_id: 2
	}
	])

profile = Profile.create([
	{
		name: "Robert Lee",
		photo: "https://scontent.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/10247417_10153994633535581_1589428203_n.jpg?oh=305bdfab4ff373ba75de5bbf55cef9a8&oe=565493C4",
		description: "I'm originally from Hong Kong, but am now in the US for college. I love coding!",
		base: "Providence, Rhode Island",
		education: "Brown University '17",
		interests: "Singing, Design, Sociology",
		user_id: 1
	},{
		name: "Richard Lin",
		photo: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xtp1/v/t1.0-9/11705122_10155909237030657_5487791262094936207_n.jpg?oh=1e91d264c5a32b1a3bdc82eda8f75830&oe=5625F5B9&__gda__=1445435772_28f00e7f42ff76b48bfdedefaf3edf03",
		description: "A traveling student with many talents",
		base: "Troy, Michigan",
		education: "Wayne State University",
		interests: "Long walks on the beach with deep life talks",
		user_id: 2
	}])

user = User.create([
	{
		email: "robertlplee@gmail.com",
		password: "tagnqe12"
	},{
		email: "rslin93@gmail.com",
		password: "14213986AZ"
	}])