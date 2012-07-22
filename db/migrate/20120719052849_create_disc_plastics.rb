class CreateDiscPlastics < ActiveRecord::Migration
  def change
    create_table :disc_plastics do |t|
      t.string(:plastic, null: false)
      t.timestamps
    end
  end
end
