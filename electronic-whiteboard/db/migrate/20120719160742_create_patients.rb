class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :dilation
      t.integer :effacement
      t.integer :station
      t.datetime :last_exam
      t.string :membrane
      t.decimal :gest_age
      t.integer :gravidity
      t.integer :parity
      t.string :group_b_strep
      t.string :blood_type
      t.text :comments

      t.timestamps
    end
  end
end
