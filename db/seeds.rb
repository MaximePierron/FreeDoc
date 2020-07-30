# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
City.destroy_all

Doctor.destroy_all

Specialty.destroy_all

Patient.destroy_all

Appointment.destroy_all

JoinTableDoctorSpecialty.destroy_all

50.times do
    city = City.create!(city: Faker::Address.city)
end

10.times do
    doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city_id: City.all.sample.id)
end

Specialty.create!(specialty: "médecine générale")
Specialty.create!(specialty: "gynocologie")
Specialty.create!(specialty: "oncologie")
Specialty.create!(specialty: "chirurgie")
Specialty.create!(specialty: "cardiologie")
Specialty.create!(specialty: "urologie")
Specialty.create!(specialty: "orthodontie")
Specialty.create!(specialty: "pediatrie")
Specialty.create!(specialty: "radiologie")


100.times do
    patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
end

100.times do
    appointment = Appointment.create!(date: Faker::Date.in_date_period, patient_id: Patient.all.sample.id, doctor_id: Doctor.all.sample.id, city_id: City.all.sample.id)
end

50.times do
    join_table = JoinTableDoctorSpecialty.create!(doctor_id: Doctor.all.sample.id, specialty_id: Specialty.all.sample.id)
end

puts "10 doctors 100 patients 100 appointments"