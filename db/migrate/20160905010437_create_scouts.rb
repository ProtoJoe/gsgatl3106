class CreateScouts < ActiveRecord::Migration
  def change
    create_table :scouts do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :start_date

      t.timestamps null: false
    end
  end
end
