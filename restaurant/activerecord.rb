require 'csv'
require 'sqlite3'

require 'rake'
require 'active_record'



# use this with be rake db:migrate
class Reservations < 
	ActiveRecord::Migration
	def change
		create_table :reservations
		do |t|
			t.string :first_name
			t.string :last_name
			t.integer :party_size
			t.string :special_occasion
			t.integer :phone
		end
	end
end


# reservations = Reservations.new
# reservations.name = "My Reservations"



# migration vs base?


class Party < ActiveRecord::Base
end

# if you already created a table called reservations, Reservation and reservations would be understood to map to each other


# Add something to the db reservations
Party.create(first_name: "Mr", last_name:"Ferguson", party_size:"3", special_occasion:"UP", phone:"8940001111")


