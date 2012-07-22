class CreateDiscLevels < ActiveRecord::Migration
  def change
    create_table :disc_levels do |t|
      t.string(:level, null: false)
      t.timestamps
    end
  end
end
