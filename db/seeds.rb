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
  first_name: "Delphine",
  last_name: "Chang-pi-hin",
  adeli_number: "1234EFT",
  arrondissement: "13011",
  description: "Infirmière depuis 6 ans je travaille dans le secteur du 11ème arrondissement de Marseille. Je fais ma tournée en voiture.",
  photo: "https://ca.slack-edge.com/T02NE0241-U02H14N14QY-dd18447e4b8b-512"
)

user2 = User.create!(
  email: "mathieu@gmail.com",
  password: "mathieu",
  first_name: "Mathieu",
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
  last_name: "Le Kennec",
  adeli_number: "9934EFT",
  arrondissement: "13011",
  description: "Infirmier depuis 6 ans dont 3 en chirurgie ambulatoire, je suis remplaçant en libéral dès que je suis disponible",
  photo: "lucien.png"
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
  first_name: "Agnès",
  last_name: "Demougeot",
  soin: "Aide à la toilette",
  atcd: "Opération de la cataracte bilatérale",
  allergy: "0",
  treatment: '0',
  age: "72",
  birthday: "05/03/1949",
  adress: "9 rue de la fontaine 13011",
  genre: "F",
  telephone_number: "0678909875",
  telephone_family: "Fille : 0783615473"
)

patient2 = Patient.create!(
  first_name: "Georgette",
  last_name: "Soler",
  soin: "Pansement genou droit, aide à la toilette",
  atcd: "PGT droite le 11/11/21, artrhose",
  treatment: "doliprane 1g si besoin",
  allergy: "Iode",
  birthday: "06/01/1935",
  age: "86",
  adress: "56 bd de la valbarelle Bat D 13011",
  genre: "F",
  telephone_number: "0775939178",
  telephone_family: "Fils : 0666166145"
)

patient3 = Patient.create!(
  first_name: "Alice",
  last_name: "Savin",
  birthday: "10/04/1933",
  soin: "aide à la toilette",
  atcd: "0",
  allergy: "Pollens",
  treatment: "0",
  age: "88",
  adress: "11 Bd du Général Raymond",
  genre: "F",
  telephone_number: "0781648810",
  telephone_family: "Fille : 0761935936"
)

patient4 = Patient.create!(
  first_name: "Hugo",
  last_name: "Compan",
  soin: "Surveillance glycémie x2 /jour",
  atcd: "Diabète de type 2",
  birthday: "10/02/1946",
  allergy: "Pénicilline",
  treatment: "Metformine 500 (1-0-0), lantus 20 ui (0-0-1)",
  age: "75",
  adress: "12 route des camoins 13011",
  genre: "M",
  telephone_number: "0668349876",
  telephone_family: "Fils: 0726187316"
)

patient5 = Patient.create!(
  first_name: "Pierre",
  last_name: "Mirot",
  atcd: "HTA, Extraction dentaire, PTH droite",
  soin: "Douche, surveillance TA",
  allergy: "0",
  treatment: "Doliprane 1g si besoin, amlor 60 (1-0-0)",
  age: "81",
  birthday: "10/07/1940",
  adress: "22 rue de la fontaine 13011",
  genre: "M",
  telephone_number: "0678909877",
  telephone_family: "Neveu: 0754624583"
)

patient6 = Patient.create!(
  first_name: "Louise",
  last_name: "Dalleau",
  atcd: "Insuffisance rénale sévère, HTA",
  soin: "Dialyse péritonéale, surveillance TA",
  allergy: "0",
  treatment: "amlor 60 (1-0-0)",
  age: "75",
  adress: "92 avenue Lauraine 13011",
  genre: "F",
  birthday: "29/07/1946",
  telephone_number: "0629109878",
  telephone_family: "Fille: 0641947652"
)

patient8 = Patient.create!(
  first_name: "Thomas",
  last_name: "Dugrin",
  atcd: "Diabète de type 1 avec pompe à insuline, HTA",
  soin: "Surveillance glycémie x3/jour, surveillance TA",
  treatment: "insuline rapide 10 ui (1-1-1)",
  allergy: "0",
  age: "76",
  birthday: "16/09/1945",
  adress: "9 traverse de la montre 13011",
  genre: "M",
  telephone_number: "0678909815",
  telephone_family: "Nièce: 0691432657"
)

patient9 = Patient.create!(
  first_name: "Marcelle",
  last_name: "Clapot",
  soin: "Aide à la toilette",
  atcd: "cataracte x2, appendicectomie en 1996",
  age: "87",
  allergy: "lamaline",
  treatment: "0",
  birthday: "16/09/1945",
  adress: "66 Avenue Emmanuel Allard 13011",
  telephone_number: "0678909825",
  genre: "F",
  telephone_family: "Petite-fille: 0792514525"
)

patient10 = Patient.create!(
  first_name: "Adrien",
  last_name: "Kozmic",
  soin: "Injection s/c",
  atcd: "fracture humérus gauche le 21/11/24",
  allergy: "0",
  treatment: "lovenox 0,4 (0-0-1)",
  age: "63",
  birthday: "19/10/1958",
  adress: "45 Bd de la Valbarelle 13011",
  genre: "M",
  telephone_number: "0762857875",
  telephone_family: "Femme: 0645968217"
)

patient11 = Patient.create!(
  first_name: "Marie",
  last_name: "Puget",
  soin: "Injection s/c",
  atcd: "phlébite le 26/11/21",
  allergy: "topalgic",
  treatment: "lovenox 0,8 (1-0-1)",
  age: "69",
  birthday: "19/12/1952",
  adress: "25 traverse de la sablière 13011",
  genre: "F",
  telephone_number: "0678909835",
  telephone_family: "Mari: 0739562135"
)

patient12 = Patient.create!(
  first_name: "Pierre",
  last_name: "Talosi",
  soin: "Surveillance de la glycémie, surveillance TA",
  atcd: "Diabète de type 2, HTA",
  age: "75",
  allergy: "0",
  treatment: "meformine 1000 (1-0-1)",
  birthday: "19/11/1946",
  adress: "7 Bd Valentin 13011",
  genre: "M",
  telephone_number: "0678909895",
  telephone_family: "Femme: 0739461825"
)

patient13 = Patient.create!(
  first_name: "Remi",
  last_name: "Falomo",
  soin: "Pansement ulcère jambe gauche, Bas de contention",
  atcd: "Insuffisance veineuse",
  treatment: "0",
  age: "85",
  birthday: "19/11/1936",
  allergy: "Iode",
  adress: "17 Rue Centrale 13011",
  genre: "M",
  telephone_number: "0769500975",
  telephone_family: "Fils: 0739164875"
)

patient14 = Patient.create!(
  first_name: "Georges",
  last_name: "Politi",
  soin: "Aide à la toilette",
  atcd: "BPCO, psoriasis",
  age: "95",
  allergy: "Pénicilline",
  treatment: "crème corticoide",
  birthday: "19/03/1926",
  adress: "11 Bd du Général Raymond 13011",
  genre: "M",
  telephone_number: "0678909175",
  telephone_family: "Fils: 0619637815"
)

patient15 = Patient.create!(
  first_name: "Olivier",
  last_name: "Sisco",
  soin: "Pansement complexe avec redon",
  atcd: "Ménistectomie 24/11/21, Asthme",
  age: "45",
  birthday: "13/05/1926",
  allergy: "Iode",
  treatment: "doliprane si besoin 3x /jour, topalgic 50 si besoin",
  adress: "13 Rue Raymond Pitet 13011",
  genre: "M",
  telephone_number: "0783167875",
  telephone_family: "Femme: 0794961895"
)

patient16 = Patient.create!(
  first_name: "Huguette",
  last_name: "Perez",
  soin: "Pansement genou droit, Aide à la toilette, Chaussettes de contention, Surveillance de la tension artérielle",
  atcd: "PTG droite le 26/11/21, Hypertension artérielle, Insuffisance veineuse, Arthrose",
  treatment: "Amlor 30 (1-0-1), Paracétamol 1g si besoin toutes les 4 à 6h (si EVA > 3), Acupan si besoin 3x /jour (si EVA > 6)",
  age: "87",
  birthday: "07/01/1934",
  allergy: "Iode",
  adress: "56 Bd de la Valbarelle 13011",
  genre: "F",
  telephone_number: "0783147875",
  telephone_family: "Fils: 0695961895"
)

transmission1 = Transmission.create!(
  user: user1,
  patient: patient16,
  content: "29 nov. 11h41 (Victoria) - Nouvelle patiente, RAD ce jour. Patiente à J3 d'une PTG droite. Pansement propre et occlusif, à refaire demain. TA stable : 123/87, pouls : 86. EVA : 3, doliprane donné à 10h00, EVA à 0( 30 min après).Bonne mobilisation, kiné à domicile tous les jours."
)

transmission2 = Transmission.create!(
  user: user1,
  patient: patient16,
  content: "30 nov. 12h41 (Victoria) - J4 (PTG droite). Réfection pst genou droit ce jour, plaie propre, fermée par des agrafes à enlever à J15. EVA à 0 ce jour. TA : 133/87, pouls : 89.  "
)

replacement = Replacement.create!(
  start_date: "12/11/2021",
  end_date: "12/12/2021",
  user: user2,
  patient: patient1,
  owner: user1
)

# replacement1 = Replacement.create!(
#   start_date: "12/11/2021",
#   end_date: "12/12/2021",
#   user: user2,
#   patient: patient1,
#   owner: user1,
#   status: "new"
# )

# replacement2 = Replacement.create!(
#   start_date: "12/11/2021",
#   end_date: "12/12/2021",
#   user: user2,
#   patient: patient2,
#   owner: user1
# )

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

care = Care.create!(
  patient: patient16,
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
  name: "IDEL 13011"
)

Chatroom.create!(
  name: "Entraide"
)

[user2, user3, user4].each do |user|
  chatroom = Chatroom.new
  chatroom.owner = user1
  chatroom.recipient = user
  chatroom.save
end

puts "done!"
