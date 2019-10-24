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

15.times do |index|
  Doctor.create(first_name: "Prenom_d#{index}", last_name: "Nom_d#{index}", specialty: "specialité#{index}", zip_code: "zip_0557#{index}")
end

15.times do |index|
  Patient.create(first_name: "Prenom_p#{index}", last_name: "Nom_p#{index}")
end

15.times do |index|
  Appointment.create(date: rand(Date.civil(2019, 1, 1)..Date.civil(2020, 12, 31)), doctor_id: rand(3...18), patient_id: rand(3...18))
end
