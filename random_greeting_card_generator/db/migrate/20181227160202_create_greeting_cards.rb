class CreateGreetingCards < ActiveRecord::Migration[5.2]
  def change
    create_table :greeting_cards do |t|
      t.string :title
      t.string :description
      t.integer :category_id
      t.string :image

      t.timestamps
    end
  end
end
