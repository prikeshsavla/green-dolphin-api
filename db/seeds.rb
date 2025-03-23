# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Environment.create([ {
  "name": "Development",
  "key": "dev"
},
{
  "name": "Test",
  "key": "test"
} ])
Flag.create({ key: "show_ui", name: "Show UI", description: "Show the UI", default_value: false })
Flag.create({ "name": "Show Contact", "key": "show-contact", description: "Show Contact info", default_value: false })


Flag.all.each do |flag|
  Environment.all.each do |env|
      EnvironmentFlag.create!({ environment: env, flag: flag })
  end
end
puts EnvironmentFlag.count
