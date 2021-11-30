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
  last_name: "Chang-pi-hin",
  adeli_number: "1234EFT",
  arrondissement: "13011",
  description: "Infirmière depuis 3 ans, je travaille dans le secteur du 11ème arrondissement de Marseille. Je fais ma tournée en voiture.",
  photo: "https://ca.slack-edge.com/T02NE0241-U02H14N14QY-dd18447e4b8b-512"
)

user2 = User.create!(
  email: "mathieu@gmail.com",
  password: "mathieu",
  first_name: "mathieu",
  last_name: "Romano",
  adeli_number: "1290TFT",
  arrondissement: "13011",
  description: "Infirmier depuis 2 ans à l'hôpital, en parallèle je suis remplaçant en libéral.",
  photo: "https://ca.slack-edge.com/T02NE0241-U02GK1N8E90-699d5456404e-512"
)

user3 = User.create!(
  email: "arthur@gmail.com",
  password: "arthur",
  first_name: "arthur",
  last_name: "Ancian",
  adeli_number: "9934EFT",
  arrondissement: "13011",
  description: "Infirmier depuis 3 ans en chirurgie ambulatoire, en parallèle je suis remplaçant en libéral.",
  photo: "https://ca.slack-edge.com/T02NE0241-U02GEPNEZD3-d535aa0a5e5b-512"
)

user4 = User.create!(
  email: "lucien@gmail.com",
  password: "lucien",
  first_name: "lucien",
  last_name: "Dupré",
  adeli_number: "1034HIT",
  arrondissement: "13011",
  description: "Infirmier libéral depuis 4 ans dans le 13011, je suis disponible pour faire des remplacements.",
  photo: "https://ca.slack-edge.com/T02NE0241-U02GD82T65B-f5ff7bcc27a8-512"
)

patient1 = Patient.create!(
  first_name: "Paul",
  last_name: "Souza",
  soin: "Douche",
  age: "72",
  adress: "9 rue de la fontaine 13011",
  genre: "M",
  telephone_number: "0678909875",
  telephone_family: "0783615473"
)

patient2 = Patient.create!(
  first_name: "Georgette",
  last_name: "Soler",
  soin: "Injection s/c",
  age: "86",
  adress: "56 bd de la tonnelle 13011",
  genre: "F",
  telephone_number: "0775939178",
  telephone_family: "0666166145"
)

patient3 = Patient.create!(
  first_name: "Alice",
  last_name: "Saras",
  soin: "Douche",
  age: "88",
  adress: "23 rue de la sinécure 13011",
  genre: "F",
  telephone_number: "0781648810",
  telephone_family: "0761935936"
)

patient4 = Patient.create!(
  first_name: "Hugo",
  last_name: "Compain",
  soin: "Pansement",
  age: "75",
  adress: "12 rue du corbeau 13011",
  genre: "M",
  telephone_number: "0668349876",
  telephone_family: "0726187316"
)

patient5 = Patient.create!(
  first_name: "Pierre",
  last_name: "Miel",
  soin: "Douche",
  age: "81",
  adress: "22 rue de la fontaine 13011",
  genre: "M",
  telephone_number: "0678909877",
  telephone_family: "0754624583"
)

patient6 = Patient.create!(
  first_name: "Louis",
  last_name: "Dalleau",
  soin: "Dialyse",
  age: "75",
  adress: "92 avenue Lauraine 13011",
  genre: "M",
  telephone_number: "0629109878",
  telephone_family: "0641947652"
)

patient7 = Patient.create!(
  first_name: "Jules",
  last_name: "Feta",
  soin: "Douche",
  age: "67",
  adress: "30 rue sainte-croix 13011",
  genre: "M",
  telephone_number: "0678909879",
  telephone_family: "0736513486"
)

patient8 = Patient.create!(
  first_name: "Thomas",
  last_name: "Dugrin",
  soin: "Pansement",
  age: "76",
  adress: "64 rue de toulouse 13011",
  genre: "M",
  telephone_number: "0678909815",
  telephone_family: "0691432657"
)

patient9 = Patient.create!(
  first_name: "Andrea",
  last_name: "Claros",
  soin: "Douche",
  age: "87",
  adress: "67 rue fimeux 13011",
  telephone_number: "0678909825",
  genre: "M",
  telephone_family: "0792514525"
)

patient10 = Patient.create!(
  first_name: "Adrien",
  last_name: "Cozmic",
  soin: "Injection s/c",
  age: "63",
  adress: "5 rue de la sauvette 13011",
  genre: "M",
  telephone_number: "0762857875",
  telephone_family: "0645968217"
)

patient11 = Patient.create!(
  first_name: "Marie",
  last_name: "Pugnasse",
  soin: "Pansement",
  age: "69",
  adress: "111 rue bolat 13011",
  genre: "F",
  telephone_number: "0678909835",
  telephone_family: "0739562135"
)

patient12 = Patient.create!(
  first_name: "Pierre",
  last_name: "Talosi",
  soin: "Surveillance de la glycémie",
  age: "75",
  adress: "97 rue faley 13011",
  genre: "M",
  telephone_number: "0678909895",
  telephone_family: "0739461825"
)

patient13 = Patient.create!(
  first_name: "Remi",
  last_name: "Falomo",
  soin: "Pansement ulcère",
  age: "85",
  adress: "99 rue jilo 13011",
  genre: "M",
  telephone_number: "0769500975",
  telephone_family: "0739164875"
)

patient14 = Patient.create!(
  first_name: "Jeremy",
  last_name: "Poloti",
  soin: "Pansement complexe",
  age: "95",
  adress: "49 rue de la bidelaire 13011",
  genre: "M",
  telephone_number: "0678909175",
  telephone_family: "0619637815"
)

patient15 = Patient.create!(
  first_name: "Jean-Louis",
  last_name: "Sisco",
  soin: "Douche",
  age: "45",
  adress: "109 rue de la faim 13011",
  genre: "M",
  telephone_number: "0783167875",
  telephone_family: "0794961895"
)

replacement1 = Replacement.create!(
  start_date: "12/11/2021",
  end_date: "12/12/2021",
  user: user2,
  patient: patient1,
  owner: user1,
  status: "new"
)

replacement2 = Replacement.create!(
  start_date: "12/11/2021",
  end_date: "12/12/2021",
  user: user2,
  patient: patient2,
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
