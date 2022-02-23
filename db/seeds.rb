# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
puts 'starting seed'
User.destroy_all
Beast.destroy_all
Rental.destroy_all
puts 'previous seed destroyed'
puts 'creating new seed'
user1 = User.new(email: 'exemple@gmail.com', password: '123456', address: "8 rue des nanettes")
user1.save!
puts 'user done!'
beast1 = Beast.create(user: user1, date_of_birth: '05/01/2019', name: 'Pipou le tigre', photos: 'https://images.unsplash.com/photo-1561731216-c3a4d99437d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80')
beast1.save!
beast2 = Beast.create(user: user1, name: 'Pipette la tigresse', photos: 'https://images.unsplash.com/photo-1589656966895-2f33e7653819?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80')
beast2.save!
beast3 = Beast.create(user: user1, date_of_birth: '05/01/2019', name: 'Pipou le tigre', photos: 'https://images.unsplash.com/photo-1561731216-c3a4d99437d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80')
beast3.save!
beast4 = Beast.create(user: user1, name: 'Pipette la tigresse', photos: 'https://images.unsplash.com/photo-1589656966895-2f33e7653819?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80')
beast4.save!
beast5 = Beast.create(user: user1, date_of_birth: '05/01/2019', name: 'Pipou le tigre', photos: 'https://images.unsplash.com/photo-1561731216-c3a4d99437d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80')
beast5.save!
beast6 = Beast.create(user: user1, name: 'Pipette la tigresse', photos: 'https://images.unsplash.com/photo-1589656966895-2f33e7653819?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80')
beast6.save!
puts 'beast done!'
rental1 = Rental.create(user: user1, beast: beast1, start_date: Date.today, end_date: Date.today + 1, status: 'Confirmed')
rental1.save!
puts 'rental done!'
