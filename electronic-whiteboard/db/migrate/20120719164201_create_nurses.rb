class CreateNurses < ActiveRecord::Migration
  def change
    create_table :nurses do |t|
      t.string :first_init
      t.string :last_name

      t.timestamps
    end
  end
end
