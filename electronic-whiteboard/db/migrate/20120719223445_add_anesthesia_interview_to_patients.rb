class AddAnesthesiaInterviewToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :anesthesia_interview, :string
  end
end
