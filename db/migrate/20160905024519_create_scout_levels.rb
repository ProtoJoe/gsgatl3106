class CreateScoutLevels < ActiveRecord::Migration
  def change
    create_table :scout_levels do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
