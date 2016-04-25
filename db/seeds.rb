# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


admin = User.create({
    username: "admin",
    password: "password",
    password_confirmation: "password",
    about: "About the Admin",
    admin: true
  })

user = User.create({
    username: "user",
    password: "password",
    password_confirmation: "password",
    about: "About the Basic user",
  })

disabled_user = User.create({
    username: "disabled_user",
    password: "password",
    password_confirmation: "password",
    about: "About the disabled user",
    disabled: true
  })

[admin, user, disabled_user].each do |u|
  puts "created user: #{u.attributes.inspect}"
end

