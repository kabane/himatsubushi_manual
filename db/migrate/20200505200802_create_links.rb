class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.references :content, foreign_key: true, null: false
      t.string :name
      t.string :url
      t.text :note

      t.timestamps
    end
  end
end
