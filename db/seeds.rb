# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
employee=Employee.create(
    first_name: 'nouman',
    last_name:'sarwar',
    email:'nouman@gmail.com',
    password:'123123123',
    confirm_password:'123123123',
    country:'pakistan',

)
employee=Employee.new(
    first_name: 'muhammad',
    last_name:'nouman',
    email:'nouman2@gmail.com',
    password:'12312223123',
    confirm_password:'12312223123',
    country:'austrailia',
    
)
employee.save