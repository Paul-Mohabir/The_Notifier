# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.destroy_all


5.times do |i|
  p = Company.create!(
    name: "Company #{i}"
  )
end

User.create!(
  name:  "Mr.Snrub",
  email: "Montyburns@snpp.com",
  company_id: Company.all.sample.id,
  address: "220 king street west Toronto Ontario",
  phone: "939 - 555 9034",
  emergency_contact: "Waylon Smithers",
  shift_preference: "Morning",
  password: "123",
  admin: true
  )
