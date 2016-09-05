class AddLevelToScouts < ActiveRecord::Migration
  def change
  	add_column :scouts, :scout_level, :integer

    add_index :scouts, :last_name
    add_index :scouts, :first_name
    add_index :scouts, :scout_level
  end
end
