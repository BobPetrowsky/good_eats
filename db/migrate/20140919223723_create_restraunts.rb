class CreateRestraunts < ActiveRecord::Migration
  def change
    create_table :restraunts do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :zip_code, null: false
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end


# A restaurant must have a name, address, city, state, and zip code.
# It can optionally have a description and a category (e.g. thai, italian, chinese).
