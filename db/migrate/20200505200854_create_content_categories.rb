class CreateContentCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :content_categories do |t|
      t.references :content, foreign_key: true, null: false
      t.references :category, foreign_key: true, null: false

      t.timestamps
    end
  end
end
