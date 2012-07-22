class CreateDiscColors < ActiveRecord::Migration
  def change
    create_table :disc_colors do |t|
      t.string(:color, null: false)
      t.timestamps
    end
  end
end
