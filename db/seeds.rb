# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "spaces", "contents"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
  username: "jamie",
  password: "password",
  password_confirmation: "password"
},{
  username: "test",
  password: "password",
  password_confirmation: "password"
}])

Space.create!([{
  name: "art space",
  user_id: 1,
  image: "https://wdi-project-4-spaces.s3.amazonaws.com/4c31b96bd42304199fa2d8d4cab0ec25.jpeg",
  color: ""
}, {
  name: "inspiration",
  user_id: 2,
  image: "",
  color: ""
},{
  name: "jigsaw",
  user_id: 2,
  image: "",
  color: ""
}])
