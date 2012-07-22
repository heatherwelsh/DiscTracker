class CreateDiscStabilities < ActiveRecord::Migration
  def change
    create_table :disc_stabilities do |t|
      t.string(:stability, null: false)
      t.timestamps
    end
  end
end
