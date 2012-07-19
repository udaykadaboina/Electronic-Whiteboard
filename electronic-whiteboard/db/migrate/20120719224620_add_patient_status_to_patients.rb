class AddPatientStatusToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :patient_status, :string
  end
end
