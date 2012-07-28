class ChangedTypeColumnNameInDiscType < ActiveRecord::Migration
  def change
    rename_column :disc_types, :type, :disc_type
  end
end
