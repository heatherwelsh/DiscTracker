class CreateDiscWeights < ActiveRecord::Migration
  def change
    create_table :disc_weights do |t|
      t.integer(:weight, null: false)
      t.timestamps
    end
  end
end
