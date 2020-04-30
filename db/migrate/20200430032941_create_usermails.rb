class CreateUsermails < ActiveRecord::Migration[6.0]
  def change
    create_table :usermails do |t|
      t.string :name
      t.string :phonenumber

      t.timestamps
    end
  end
end
