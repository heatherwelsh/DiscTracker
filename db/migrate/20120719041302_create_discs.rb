class CreateDiscs < ActiveRecord::Migration
  def change
    create_table :discs do |t|
      t.integer(:playerid, :null => false)
      t.integer(:name, :null => false)
      t.integer(:type, :null => false)
      t.integer(:brand, :null => false)
      t.integer(:plastic, :null => false)
      t.integer(:color, :null => false)
      t.integer(:stability, :null => true)
      t.integer(:weight, :null => true)
      t.integer(:level, :null => true)
      t.timestamps
    end

    add_index(:discs, :playerid)

  end
end
