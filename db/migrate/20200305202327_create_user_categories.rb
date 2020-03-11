class CreateUserCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :user_categories do |t|
      t.datetime :date
      t.integer :progress
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
