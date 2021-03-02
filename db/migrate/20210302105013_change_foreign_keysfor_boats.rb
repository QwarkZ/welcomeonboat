class ChangeForeignKeysforBoats < ActiveRecord::Migration[6.1]
  def change
    rename_column :boats, :user_id, :owner_id
  end
end
