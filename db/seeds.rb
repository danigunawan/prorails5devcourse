# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end

10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus atque molestias voluptates minus iusto pariatur aliquam, nulla exercitationem et necessitatibus ratione ipsam maiores dolorem a repellendus, vel harum, ut modi.",
		topic_id: Topic.last.id		
		)
end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "rails #{skill}",
		percent_utilized: 15
		)
end

puts "5 Skills created"

8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Ruby On Rails",
		body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, ipsum facere quam nisi culpa quae aliquam magni modi dicta est sed enim. Magnam nulla praesentium voluptatem quos facere delectus veritatis.",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
		)
end

1.times do |portfolio_item|
	Portfolio.create!(
		title: "Angular: #{portfolio_item}",
		subtitle: "Ruby On Rails",
		body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, ipsum facere quam nisi culpa quae aliquam magni modi dicta est sed enim. Magnam nulla praesentium voluptatem quos facere delectus veritatis.",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
		)
end

puts "10 Portfolio item created"




