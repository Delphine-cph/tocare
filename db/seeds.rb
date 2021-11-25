# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'cleaning db'
Replacement.destroy_all
Care.destroy_all
Message.destroy_all
Chatroom.destroy_all
User.destroy_all
Patient.destroy_all

user1 = User.create!(
  email: "delphine@gmail.com",
  password: "delphine",
  first_name: "delphine",
  last_name: "cph",
  adeli_number: "1234EFT",
  arrondissement: "13011",
  photo: "https://ca.slack-edge.com/T02NE0241-U02H14N14QY-dd18447e4b8b-512"
)

user2 = User.create!(
  email: "mathieu@gmail.com",
  password: "mathieu",
  first_name: "mathieu",
  last_name: "Rmn",
  adeli_number: "1290TFT",
  arrondissement: "13011",
  photo: "https://ca.slack-edge.com/T02NE0241-U02GK1N8E90-699d5456404e-512"
)

user3 = User.create!(
  email: "arthur@gmail.com",
  password: "arthur",
  first_name: "arthur",
  last_name: "bla",
  adeli_number: "9934EFT",
  arrondissement: "13011",
  photo: "https://ca.slack-edge.com/T02NE0241-U02GEPNEZD3-d535aa0a5e5b-512"
)

user4 = User.create!(
  email: "lucien@gmail.com",
  password: "lucien",
  first_name: "lucien",
  last_name: "ph",
  adeli_number: "1034HIT",
  arrondissement: "13011",
  photo: "https://ca.slack-edge.com/T02NE0241-U02GD82T65B-f5ff7bcc27a8-512"
)

patient1 = Patient.create!(
  first_name: "Paul",
  last_name: "Sossa",
  soin: "Douche",
  age: "95",
  adress: "9 rue de la fontaine 13011",
  genre: "M",
  telephone_number: "0678909875",
  telephone_family: "0645454545"
)

patient2 = Patient.create!(
  first_name: "Georgette",
  last_name: "Soler",
  soin: "Injection s/c",
  age: "86",
  adress: "56 bd de la valbarelle 13011",
  genre: "F",
  telephone_number: "0678945875",
  telephone_family: "0645456545"
)

patient3 = Patient.create!(
  first_name: "Alice",
  last_name: "Sa",
  soin: "Douche",
  age: "105",
  adress: "23 rue de la font 13011",
  genre: "F",
  telephone_number: "0678909810",
  telephone_family: "0645454510"
)

patient4 = Patient.create!(
  first_name: "Ugo",
  last_name: "Compain",
  soin: "Pansement",
  age: "75",
  adress: "12 rue de la fontaine 13011",
  genre: "M",
  telephone_number: "0678909876",
  telephone_family: "0645454546"
)

patient5 = Patient.create!(
  first_name: "Paul",
  last_name: "Mirabel",
  soin: "Douche",
  age: "115",
  adress: "20 rue de la fontaine 13011",
  genre: "M",
  telephone_number: "0678909877",
  telephone_family: "0645454547"
)

patient6 = Patient.create!(
  first_name: "Louis",
  last_name: "Dalleau",
  soin: "Dialyse",
  age: "75",
  adress: "100 avenue Lauraine 13011",
  genre: "M",
  telephone_number: "0678909878",
  telephone_family: "0645454548"
)

patient7 = Patient.create!(
  first_name: "Jules",
  last_name: "Loula",
  soin: "Douche",
  age: "85",
  adress: "30 rue sainte 13011",
  genre: "M",
  telephone_number: "0678909879",
  telephone_family: "0645454549"
)

patient8 = Patient.create!(
  first_name: "Tom",
  last_name: "Posa",
  soin: "Pansement",
  age: "95",
  adress: "100 rue de toulouse 13011",
  genre: "M",
  telephone_number: "0678909815",
  telephone_family: "0645454515"
)

patient9 = Patient.create!(
  first_name: "Andrea",
  last_name: "Clarosa",
  soin: "Douche",
  age: "91",
  adress: "67 rue fameux 13011",
  telephone_number: "0678909825",
  genre: "M",
  telephone_family: "0645454525"
)

patient10 = Patient.create!(
  first_name: "Paul",
  last_name: "Sossa",
  soin: "Injection s/c",
  age: "95",
  adress: "9 rue de la fontaine 13011",
  genre: "M",
  telephone_number: "0678909875",
  telephone_family: "0645454545"
)

patient11 = Patient.create!(
  first_name: "Marie",
  last_name: "Claire",
  soin: "Pansement",
  age: "115",
  adress: "111 rue de la Moula 13011",
  genre: "F",
  telephone_number: "0678909835",
  telephone_family: "0645454535"
)

patient12 = Patient.create!(
  first_name: "Pierre",
  last_name: "Talosi",
  soin: "Surveillance de la glycémie",
  age: "75",
  adress: "97 rue fifou 13011",
  genre: "M",
  telephone_number: "0678909895",
  telephone_family: "0645454595"
)

patient13 = Patient.create!(
  first_name: "Remi",
  last_name: "Falomo",
  soin: "Pansement ulcère",
  age: "85",
  adress: "99 rue jilo 13011",
  genre: "M",
  telephone_number: "0678900975",
  telephone_family: "0645450945"
)

patient14 = Patient.create!(
  first_name: "Jeremy",
  last_name: "Poloti",
  soin: "Pansement complexe",
  age: "95",
  adress: "49 rue de la bidelaire 13011",
  genre: "M",
  telephone_number: "0678909175",
  telephone_family: "0645454145"
)

patient15 = Patient.create!(
  first_name: "Arthur",
  last_name: "Siso",
  soin: "Douche",
  age: "45",
  adress: "109 rue mange 13011",
  genre: "M",
  telephone_number: "0778909875",
  telephone_family: "0745454545"
)


replacement = Replacement.create!(
  start_date: "12/11/2021",
  end_date: "12/12/2021",
  user: user2,
  patient: patient1,
  owner: user1
)

care = Care.create!(
  patient: patient1,
  user: user1,
  day: "Lundi"
)

care = Care.create!(
  patient: patient2,
  user: user1,
  day: "Lundi"
)

care = Care.create!(
  patient: patient3,
  user: user1,
  day: "Lundi"
)

care = Care.create!(
  patient: patient4,
  user: user1,
  day: "Lundi"
)

care = Care.create!(
  patient: patient5,
  user: user1,
  day: "Lundi"
)

care = Care.create!(
  patient: patient6,
  user: user1,
  day: "Lundi"
)

care = Care.create!(
  patient: patient7,
  user: user1,
  day: "Lundi"
)

care = Care.create!(
  patient: patient8,
  user: user1,
  day: "Lundi"
)

care = Care.create!(
  patient: patient9,
  user: user1,
  day: "Lundi"
)

care = Care.create!(
  patient: patient10,
  user: user1,
  day: "Lundi"
)

care = Care.create!(
  patient: patient11,
  user: user1,
  day: "Lundi"
)

care = Care.create!(
  patient: patient12,
  user: user1,
  day: "Lundi"
)

care = Care.create!(
  patient: patient13,
  user: user1,
  day: "Lundi"
)

care = Care.create!(
  patient: patient14,
  user: user1,
  day: "Lundi"
)

care = Care.create!(
  patient: patient15,
  user: user1,
  day: "Lundi"
)

Chatroom.create!(
  name: "Actualités"
)

Chatroom.create!(
  name: "National"
)

Chatroom.create!(
  name: "Régional"
)

Chatroom.create!(
  name: "IDEL 75011"
)

Chatroom.create!(
  name: "Entraide"
)

puts "done!"
