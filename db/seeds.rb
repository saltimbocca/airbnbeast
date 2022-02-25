require 'open-uri'

puts 'starting seed'
Rental.destroy_all
Beast.destroy_all
User.destroy_all

puts 'previous seed destroyed'
puts 'creating new seed'

user1 = User.new(email: 'crocodiledundee@gmail.com', password: '123456', first_name: 'Crocodile', last_name: 'Dundee', address: '14 Rue Crespin du Gast 75011 Paris', bio: 'Salut à tous, je suis une star de cinéma en Australie et j\'aime les animaux, surtout s\'ils sont dangereux 🐊. Je fais le Wagon au #perchoir (les meilleurs).')
user1.save!
puts 'user1 done!'

user2 = User.new(email: 'marcledresseur@gmail.com', password: '123456', first_name: 'Marc', last_name: 'Ledresseur', address: '26 Rue des Tournelles 75004 Paris', bio: 'Salut à tous, je suis dresseur. Mes animaux ne sont dangereux que si on ne les nourrit pas 😄')
user2.save!
puts 'user2 done!'

user3 = User.new(email: 'jeandupont@gmail.com', password: '123456', first_name: 'Jean', last_name: 'Dupont', address: '106 Avenue Kleber 75116 Paris', bio: 'Coucou')
user3.save!
puts 'user3 done!'

user4 = User.new(email: 'alicelaroche@gmail.com', password: '123456', first_name: 'Alice', last_name: 'Laroche', address: '68 Rue des Dames 75017 Paris', bio: 'Coucou')
user4.save!
puts 'user4 done!'

user5 = User.new(email: 'agathesaintfrison@gmail.com', password: '123456', first_name: 'Agathe', last_name: 'Saint-Frison', address: '15 rue de l\'Atlas 75019 Paris', bio: 'Salut tout le monde, je suis TA au Wagon et j\'adore les gorilles :)')
user5.save!
puts 'user5 done!'

user6 = User.new(email: 'bernardlalouche@gmail.com', password: '123456', first_name: 'Bernard', last_name: 'Lalouche', address: '340 Rue de Vaugirard 75015 Paris', bio: 'Coucou')
user5.save!
puts 'user6 done!'

user7 = User.new(email: 'nicolaslatin@gmail.com', password: '123456', first_name: 'Nicolas', last_name: 'Latin', address: '9 Place Saint-Sulpice 75006 Paris', bio: 'Coucou')
user6.save!
puts 'user6 done!'

user8 = User.new(email: 'fabienneroux@gmail.com', password: '123456', first_name: 'Fabienne', last_name: 'Roux', address: '40 Boulevard Arago 75013 Paris', bio: 'Coucou')
user7.save!
puts 'user7 done!'

beast1 = Beast.new(user: user3, name: 'Crocro', gender: 'Female', date_of_birth: '2017-04-08', species: 'Quadruped', bio: 'Grrrrrrrr')
photo1 = URI.open('http://www.slate.fr/sites/default/files/styles/1060x523/public/alligator-1851313_1280.jpg')
beast1.photos.attach(io: photo1, filename: "#{beast1.name}.jpg")
beast1.save!
puts 'beast1 done!'

beast2 = Beast.new(user: user4, name: 'Spider Woman', gender: 'Female', date_of_birth: '2010-06-12', species: 'Insect', bio: 'Pssssssss')
photo2 = URI.open('https://img.20mn.fr/6MpiF-uGRMerKQwfDI-3TA/640x410_mygale-illustration.jpg')
beast2.photos.attach(io: photo2, filename: "#{beast2.name}.jpg")
beast2.save!
puts 'beast2 done!'

beast3 = Beast.new(user: user5, name: 'Donkey Kong', gender: 'Male', date_of_birth: '2017-12-10', species: 'Monkey', bio: 'Ouh Ouh')
photo3 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Gorille_des_plaines_de_l%27ouest_%C3%A0_l%27Espace_Zoologique.jpg/800px-Gorille_des_plaines_de_l%27ouest_%C3%A0_l%27Espace_Zoologique.jpg')
beast3.photos.attach(io: photo3, filename: "#{beast3.name}.jpg")
beast3.save!
puts 'beast3 done!'


beast4 = Beast.new(user: user6, name: 'Tigrou', gender: 'Male', date_of_birth: '2012-01-25', species: 'Quadruped', bio: 'Rrrrrrrrrrr')
photo4 = URI.open('https://upload.wikimedia.org/wikipedia/commons/4/41/Siberischer_tiger_de_edit02.jpg')
beast4.photos.attach(io: photo4, filename: "#{beast4.name}.jpg")
beast4.save!
puts 'beast4 done!'

beast5 = Beast.new(user: user7, name: 'Satan', gender: 'Male', date_of_birth: '2007-08-17', species: 'Quadruped', bio: 'Brrrrrrrrrr')
photo5 = URI.open('https://static.allodocteurs.africa/btf-12-1562-thumb-660/fdaa0ab9e9d6abac797514816b1ef46b/media.jpg')
beast5.photos.attach(io: photo5, filename: "#{beast5.name}.jpg")
beast5.save!
puts 'beast5 done!'

beast6 = Beast.new(user: user8, name: 'Bob', gender: 'Male', date_of_birth: '2007-08-17', species: 'Fish', bio: 'Bloooooob')
photo6 = URI.open('https://australie-voyage.fr/wp-content/uploads/2021/04/blobfish2.jpg')
beast6.photos.attach(io: photo6, filename: "#{beast6.name}.jpg")
beast6.save!
puts 'beast6 done!'

puts 'seed finished!'

