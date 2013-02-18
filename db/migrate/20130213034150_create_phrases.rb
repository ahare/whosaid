class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.integer :owner_id
      t.integer :speaker_id
      t.text :text
      t.datetime :spoken_on

      t.timestamps
    end
  end
end
