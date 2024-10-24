#Tu utilises le modèle Experience comme table intermédiaire pour gérer la relation many-to-many entre Doctor et Specialty. Chaque enregistrement dans la table experiences représente une association entre un docteur et une spécialité, et contient une information sur les années d'expérience dans cette spécialité.

class Experience < ApplicationRecord
  belongs_to :doctor
  belongs_to :specialty
end
