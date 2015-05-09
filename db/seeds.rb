# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

speciality_csv_text = File.read("#{Rails.root}/config/data/specialities.csv")
speciality_csv = CSV.parse(speciality_csv_text, headers: false)
if Speciality.count == 0
	speciality_csv.each do |row|
		Speciality.create!(
			name: row[0],
			descripcion: row[1],
			status: row[2])
	end
end