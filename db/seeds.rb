# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

if Property.all.empty?
  10.times do |index|
    index = index + 1
    image = URI.parse(Faker::LoremFlickr.image(search_terms: ['building'])).open

    property = Property.create(
      name: "Property #{index}",
      address: "Sample's street, #{100 + index}",
      area: rand(100...250).to_f,
      yield_plan: "#{rand(5...10)}-#{rand(11..15)}%",
      price: rand(100000...250000).to_f,
      managed_equity: 100.0,
      min_investment: rand(1000...5000).to_f,
      prop_type: "passive",
      min_equity: rand(1..15).to_f,
      presentation_url: Faker::LoremFlickr.image
    )

    property.image.attach(io: image, filename: "property_#{index}_image.jpg")
  end
end
