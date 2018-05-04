class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    Product.destroy_all
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop, image: Faker::Fillmurray.image)
    end
  end
end

Seed.begin
