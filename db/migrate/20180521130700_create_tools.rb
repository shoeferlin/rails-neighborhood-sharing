class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string :name
      t.content :description
      t.string :category
      t.string :picture_url
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
