class CreateExperiences < ActiveRecord::Migration[7.2]
  def change
    create_table :experiences do |t|
      t.integer :years_of_experience
      t.belongs_to :doctor, index:true
      t.belongs_to :specialty, index:true
      t.timestamps
    end
  end
end
