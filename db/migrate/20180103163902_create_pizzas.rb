class CreatePizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :pizzas do |t|
      t.string :pizza_url
      t.integer :tally
      t.string :restaurant_name
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
