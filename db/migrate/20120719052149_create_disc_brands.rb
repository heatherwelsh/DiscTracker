class CreateDiscBrands < ActiveRecord::Migration
  def change
    create_table :disc_brands do |t|
      t.string(:brand, null: false)
      t.timestamps
    end
  end
end
