class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :restraunt_id, null: false
      t.integer :rating, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
