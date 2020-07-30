* Ruby version
2.5.1
* Rails version
5.2.4.3



Alors voici la BDD associée à FreeDoc:
Je te laisse te référer au fichier ./db/seeds.rb pour voir ce que j'ai créé.
Les models sont:

* Appointment (date, patient_id, doctor_id, city_id)
* City (city)
* Doctor (first_name, last_name, zip_code, city_id)
* JoinTableDoctorSpecialty (doctor_id, specialty_id)
* Patient (first_name, last_name, city_id)
* Specialty (specialty)

Les seeds ont été créés avec Faker.


A partir de là je te laisse explorer :) !
