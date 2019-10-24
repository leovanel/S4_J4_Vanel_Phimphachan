# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all

villes = ["Paris","Nimes","Montpellier"]

3.times do |index|
  City.create(id:index+1,name: villes[index])
end

specialty = ["general","chirurgical", "dentist", "podologue"]

4.times do |index|
  Specialty.create(id:index+1, name: specialty[index])
end

15.times do |index|
  Doctor.create(id:index+1,first_name: "Prenom_d#{index}", last_name: "Nom_d#{index}", zip_code: "zip_0557#{index}", city_id: rand(1..3))
end

15.times do |index|
  Patient.create(id:index+1,first_name: "Prenom_p#{index}", last_name: "Nom_p#{index}",
  city_id: rand(1..3))
end

15.times do |index|
  Appointment.create(id:index+1,date: rand(Date.civil(2019, 1, 1)..Date.civil(2020, 12, 31)),
   doctor_id: rand(1..15), patient_id: rand(1..15), city_id: rand(1..3))
end

15.times do |index|
  DocSpecialty.create(id:index+1, doctor_id:rand(1..15), specialty_id:rand(1..4))
end

