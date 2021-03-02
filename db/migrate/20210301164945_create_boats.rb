class CreateBoats < ActiveRecord::Migration[6.1]
  def change
    create_table :boats do |t|
      t.integer :user_id
      t.string :name
      t.string :category
      t.string :address
      t.integer :price_per_day
      t.string :short_description
      t.text :long_description

      t.timestamps
    end
  end
end
