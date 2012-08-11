class CreateDiscStyles < ActiveRecord::Migration
  def change
    create_table :disc_styles do |t|
      t.string(:style, null: false)
      t.timestamps
    end
  end
end
