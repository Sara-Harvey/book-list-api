class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :name
      t.string :author
      t.string :description
      t.string :link
      t.string :category_id

      t.timestamps
    end
  end
end
