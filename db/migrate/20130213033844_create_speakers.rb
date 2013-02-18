class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.integer :owner_id
      t.string :name
      t.date :birthday

      t.timestamps
    end
  end
end
