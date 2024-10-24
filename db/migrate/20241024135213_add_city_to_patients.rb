
#Ajouter une colonne de référence à la table patients pour lier chaque patient à une ville via une clé étrangère pointant vers la table cities
class AddCityToPatients < ActiveRecord::Migration[7.2]
  def change #La méthode change est utilisée pour ajouter ou supprimer des éléments dans la base de données de manière réversible.
    add_reference :patients, :city, foreign_key: true #ajoute une colonne city_id à la table patients. Cela crée une référence à la table cities, indiquant que chaque patient est lié à une ville.
  end
end


#:patients : Cela indique que la colonne sera ajoutée dans la table patients.
#:city : Cela spécifie que la colonne à ajouter sera city_id.
#foreign_key: true : Cela garantit que chaque city_id dans la table patients pointe vers un enregistrement valide dans la table cities. Si tu essaies d'ajouter un city_id qui n'existe pas dans la table cities, une erreur sera générée, ce qui assure l'intégrité des données.
