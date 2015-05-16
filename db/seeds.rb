# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

user_csv_text = File.read("#{Rails.root}/config/data/users.csv")
user_csv = CSV.parse(user_csv_text, headers: false)
if User.count == 0
	user_csv.each do |row|
		User.create!(
			first_name: row[0],
			last_name: row[1],
			username: row[2],
			role: row[3],
			email: row[4],
			password: row[5],
			password_confirmation: row[6],
			specialty: row[7],
			pro_card: row[8],
			pass_admin: row[9])
	end
end

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

paciente_csv_text = File.read("#{Rails.root}/config/data/pacientes.csv")
paciente_csv = CSV.parse(paciente_csv_text, headers: false)
if Paciente.count == 0
	paciente_csv.each do |row|
		Paciente.create!(
			tipo_documento: row[0],
			documento: row[1],
			pri_nombre: row[2],
			seg_nombre: row[3],
			pri_apellido: row[4],
			seg_apellido: row[5],
			nacimiento: row[6],
			genero: row[7],
			direccion: row[8],
			telefono: row[9],
			regimen: row[10],
			num_ficha_sisben: row[11],
			estado: row[12])
	end
end

dias_csv_text = File.read("#{Rails.root}/config/data/dias.csv")
dia_csv = CSV.parse(dias_csv_text, headers: false)
if DiaHabil.count == 0
	dia_csv.each do |row|
		DiaHabil.create!(
			nombre: row[0],
			estado: row[1])
	end
end

