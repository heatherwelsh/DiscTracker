class CreateDiscNames < ActiveRecord::Migration
  def change
    create_table :disc_names do |t|
      t.string(:name, null: false)
      t.timestamps
    end
  end
end
