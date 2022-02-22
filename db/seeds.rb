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
user1 = User.new(email: 'exemple@gmail.com', password: '123456')
user1.save!
puts 'user done!'
beast1 = Beast.create(user: user1)
beast1.save!
puts 'beast done!'
rental1 = Rental.create(user: user1, beast: beast1, start_date: Date.today, end_date: Date.today + 1, status: 'Confirmed')
rental1.save!
puts 'rental done!'
