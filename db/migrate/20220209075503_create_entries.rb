class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.date :date
      t.text :thoughts
      t.string :emotion
      t.integer :rating

      t.timestamps
    end
  end
end
