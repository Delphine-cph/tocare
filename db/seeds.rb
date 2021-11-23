# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'cleaning db'
User.destroy_all
Patient.destroy_all
Replacement.destroy_all

User.create!(
  email: "delphine@gmail.com",
  password: "delphine",
  first_name: "delphine",
  last_name: "cph",
  adeli_number: "1234EFT",
  arrondissement: "13011"
)

User.create!(
  email: "mathieu@gmail.com",
  password: "mathieu",
  first_name: "mathieu",
  last_name: "Rmn",
  adeli_number: "1290TFT",
  arrondissement: "13001"
)

Patient.create!(
  first_name: "Paul",
  last_name: "Sossa",
  soin: "Douche",
  age: "95",
  adress: "9 rue de la fontaine 13011",
  telephone_number: "0678909875",
  telephone_family: "0645454545"
)

Patient.create!(
  first_name: "Georgette",
  last_name: "Soler",
  soin: "Injection s/c",
  age: "86",
  adress: "56 bd de la valbarelle 13011",
  telephone_number: "0678945875",
  telephone_family: "0645456545"
)

# replacement = Replacement.new(
# start_date: "12/11/2021",
# end_date: "12/12/2021",
#  user: "1234",
#  patient: "9876")

# Care.create!(
#   patient_id: 4,
#   user_id: 13,
#   day: 16/12/2021
# )
