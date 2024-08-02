# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Column.create([
  { title: 'Triage', color_code: '#99CCFF', description: 'bu triage', is_static: true },
  { title: 'Not Now', color_code: '#003333', description: 'bu not now', is_static: true },
  { title: 'Done', color_code: '#339933', description: 'done', is_static: true }
])
