class CreateFormValues < ActiveRecord::Migration[6.0]
  def change
    create_table :form_values do |t|
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
