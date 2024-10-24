class DropDoctorSpecialties < ActiveRecord::Migration[7.2]
  def change
    drop_table :doctor_specialties
  end
end
