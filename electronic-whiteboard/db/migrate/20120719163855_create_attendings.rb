class CreateAttendings < ActiveRecord::Migration
  def change
    create_table :attendings do |t|
      t.string :first_init
      t.string :last_name

      t.timestamps
    end
  end
end
