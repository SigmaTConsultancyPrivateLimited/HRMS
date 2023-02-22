require 'faker'
puts "Seeding data to the database ...."

AdminUser.create(email: "admin@example.com", password: "password", password_confirmation: "password") if Rails.env.development?

# Book.create!([
#   { name: 'Copying and Pasting from Stack Overflow' },
#   { name: 'Trying Stuff Until it Works' }
# ])

Emmployee.destroy_all 

10.times do |x|

	Emmployee.create!([{
	  first_name: "sfmsdnfkj",
	  last_name: "dfdg",
	  local_address: "Adfsdsf",
	  email: "ad@gmail.com"
	},
	{
	  first_name: "sfmsdnfkj",
	  last_name: "dfdg",
	  local_address: "dfdds",
	  email: "agdfd@gmail.com"
	},
	{
	 first_name: "sfmsdfgdfnfkj",
	  last_name: "dfsefesfdg",
	  local_address: "dfddsdfgds",
	  email: "agdfdsfdgd@gmail.com"
	}])
	p "Created #{Emmployee.count} Employees"
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?