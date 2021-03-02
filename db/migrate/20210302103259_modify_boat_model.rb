class ModifyBoatModel < ActiveRecord::Migration[6.1]
  def change
    rename_column :boats, :name, :title
    remove_column :boats, :short_description
    rename_column :boats, :long_description, :description
  end
end
