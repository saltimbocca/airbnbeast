require 'open-uri'

puts 'starting seed'
Rental.destroy_all
Beast.destroy_all
User.destroy_all

puts 'previous seed destroyed'
puts 'creating new seed'
user1 = User.new(email: 'crocodiledundee@gmail.com', password: '123456', first_name: 'Crocodile', last_name: 'Dundee', address: '14 Rue Crespin du Gast 75011 Paris', bio: 'Salut à tous, je suis une star de cinéma en Australie et j\'aime les animaux, surtout s\'ils sont dangereux 🐊. Je fais le Wagon au #perchoir (les meilleurs) mais j\'ai du mal à trouver des crocodiles à Paris')
user1.save!
puts 'user1 done!'
user2 = User.new(email: 'marcledresseur@gmail.com', password: '123456', first_name: 'Marc', last_name: 'Ledresseur', address: '10 Rue Crespin du Gast 75011 Paris', bio: 'Salut à tous, je suis dresseur. Mes animaux ne sont dangereux que si on ne les nourrit pas 😄')
user2.save!
puts 'user2 done!'
beast1 = Beast.new(user: user2, name: 'Lacoste', gender: 'Femelle', date_of_birth: '2017-04-08', species: 'Quadruped', bio: 'Grrrrrrrr')
photo1 = URI.open('http://www.slate.fr/sites/default/files/styles/1060x523/public/alligator-1851313_1280.jpg')
beast1.photos.attach(io: photo1, filename: "#{beast1.name}.jpg")
beast1.save!
puts 'beast1 done!'
beast2 = Beast.new(user: user2, name: 'Spider Man', gender: 'Mâle', date_of_birth: '2010-06-12', species: 'Insect', bio: 'Pssssssss')
photo2 = URI.open('https://img.20mn.fr/6MpiF-uGRMerKQwfDI-3TA/640x410_mygale-illustration.jpg')
beast2.photos.attach(io: photo2, filename: "#{beast2.name}.jpg")
beast2.save!
puts 'beast2 done!'
beast3 = Beast.new(user: user2, name: 'Donkey Kong', gender: 'Mâle', date_of_birth: '2015-01-10', species: 'Monkey', bio: 'Ouh Ouh')
photo3 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Gorille_des_plaines_de_l%27ouest_%C3%A0_l%27Espace_Zoologique.jpg/800px-Gorille_des_plaines_de_l%27ouest_%C3%A0_l%27Espace_Zoologique.jpg')
beast3.photos.attach(io: photo3, filename: "#{beast3.name}.jpg")
beast3.save!
puts 'beast3 done!'
rental1 = Rental.new(user: user1, beast: beast1, start_date: Date.today, end_date: Date.today + 1, status: 'Confirmed')
rental1.save!
puts 'rental done!'
