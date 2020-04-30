class CreateVoicemails < ActiveRecord::Migration[6.0]
  def change
    create_table :voicemails do |t|
      t.string :status
      t.integer :from_id
      t.integer :to_id
      t.integer :duration

      t.timestamps
    end
  end
end
