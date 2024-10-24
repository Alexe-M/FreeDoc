# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


### Code utilisé pour créer les enregistrements initiaux:

## Créer les entrées des specialties
# specialties = ["Dermatology", "Anesthesiology", "Neurology", "Ophthalmology", "Dentist", "Cardiology", "Pediatrics", "General Doctor", "Physiotherapy"]

## Créer 50 docteurs avec Faker et des spécialités aléatoires
# 50.times do 
#   Doctor.create(
#     first_name: Faker::Name.first_name, 
#     last_name: Faker::Name.last_name,
#     specialty: specialties.sample,
#     zip_code: Faker::Address.zip_code,
#     city: City.all.sample
#   )
# end


# ## Créer 80 patients avec Faker
# 80.times do 
#   Patient.create(
#     first_name: Faker::Name.first_name, 
#     last_name: Faker::Name.last_name,
#     city: City.all.sample
#   )
# end


# ## Créer 100 rendez-vous avec des docteurs et des patients aléatoires
# 100.times do 
#   Appointment.create(
#     date: Faker::Date.in_date_period,
#     doctor: Doctor.all.sample,
#     patient: Patient.all.sample,
#     city: City.all.sample
# )
# end 

###


#### Code utilisé pour créer mettre à jour avec City:

## Créer 10 city
# 10.times do 
#   City.create(
#     city_name: Faker::Address.city
#   )
# end

# ##Enregistrer les cities pour les ajouter aux enregistrement existants
# cities = City.all


# ## Ajouter une city aux docteurs, patients et appointments
# Doctor.where(city: nil).find_each do |doctor|     
#   doctor.update(city: cities.sample)
# end

# Patient.where(city: nil).find_each do |patient|
#   patient.update(city: cities.sample)
# end

# Appointment.where(city: nil).find_each do |appointment|
#   appointment.update(city: cities.sample)
# end

####


#### Ajouter des specialités + expériences à chaque docteur

Doctor.find_each do |doctor|   #Parcourt chaque docteur
  selected_specialities = Specialty.all.sample(rand(1..3))  #Selectionne aléatoire entre 1 à 3 specialité de la table Specialty

  selected_specialities.each do |specialty| #Parcourts chaque spécialité sélectionnée aléatoirement
    Experience.create(
      doctor: doctor,    #Attribue le docteur actuelle
      specialty: specialty,  #Attribue la specialité sélectionné
      years_of_experience: rand(1..30)   #Attribue entre 1 à 3à ans d'années d'experience
    )
  end
end









