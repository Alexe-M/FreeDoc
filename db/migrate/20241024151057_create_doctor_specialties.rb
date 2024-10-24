
# Créer une table intermédiaire qui stockera les associations entre les docteurs et les spécialités.
# rails generate migration CreateDoctorSpecialties
class CreateDoctorSpecialties < ActiveRecord::Migration[7.2]
  def change
    create_table :doctor_specialties do |t|
      # Crée une colonne doctor_id dans la table doctor_specialties. Cette colonne sera utilisée pour stocker l'ID d'un docteur (référence à la table doctors). foreign_key: true ajoute une contraite de clé étrangère, garantissant que chaque valeur dans doctor_id correspond à un enregistrement valide dans la table doctors.
      t.references :doctor, foreign_key: true
      # Crée une colonne specialty_id dans la table doctor_specialties. Cette colonne sera utilisée pour stocker l'ID d'une spécialité (référence à la table specialties). foreign_key: true : Cela garantit que chaque valeur dans specialty_id correspond à un enregistrement valide dans la table specialties.
      t.references :specialty, foreign_key: true

      t.timestamps
    end
  end
end
