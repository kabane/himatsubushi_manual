class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.references :user, foreign_key: true, null: false
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
