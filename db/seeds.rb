require 'faker'
puts "Seeding data to the database ...."

AdminUser.create(email: "admin@example.com", password: "password", password_confirmation: "password") if Rails.env.development?

# Book.create!([
#   { name: 'Copying and Pasting from Stack Overflow' },
#   { name: 'Trying Stuff Until it Works' }
# ])

Employee.destroy_all 

10.times do |x|

	Employee.create!([{
	  first_name: "sfmsdnfkj",
	  last_name: "dfdg",
	  address: "Adfsdsf",
	  email: "ad@gmail.com"
	},
	{
	  first_name: "sfmsdnfkj",
	  last_name: "dfdg",
	  address: "dfdds",
	  email: "agdfd@gmail.com"
	},
	{
	 first_name: "sfmsdfgdfnfkj",
	  last_name: "dfsefesfdg",
	  address: "dfddsdfgds",
	  email: "agdfdsfdgd@gmail.com"
	}])
	p "Created #{Employee.count} Employees"
end