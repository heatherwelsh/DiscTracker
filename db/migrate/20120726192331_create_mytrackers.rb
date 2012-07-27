class CreateMytrackers < ActiveRecord::Migration
  def change
    create_table :mytrackers do |t|

      t.timestamps
    end
  end
end
