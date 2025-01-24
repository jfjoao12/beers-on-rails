Beer.destroy_all
Company.destroy_all

7.times do
  company = Company.create(name: Faker::Company.unique.name)

  number_of_beers = rand(3..9)
  number_of_beers.times do
    company.beer.create(
      name: Faker::Beer.unique.name,
      price: Faker::Commerce.price(),
      description: "This Beer has a style of #{Faker::Beer.style}"
    )
  end
end

puts "There are now #{Company.count} Companies"
puts "There are now #{Beer.count} Beers"
