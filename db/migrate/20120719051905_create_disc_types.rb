class CreateDiscTypes < ActiveRecord::Migration
  def change
    create_table :disc_types do |t|
      t.string(:type, null: false)
      t.timestamps
    end
  end
end
