# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Admin.create(username: 'JessAdmin',
            email: 'admin@gmail.co.uk',
            password: "admin1234",
            password_confirmation: "admin1234")


User.create(username: 'Katie',
            email: 'katie@test.co.uk',
            password: "katie1234",
            password_confirmation: "katie1234")

User.create(username: 'Susan',
            email: 'susan@test.co.uk',
            password: "susan1234",
            password_confirmation: "susan1234")

User.create(username: 'Charlie',
            email: 'charlie@test.co.uk',
            password: "charlie1234",
            password_confirmation: "charlie1234")
