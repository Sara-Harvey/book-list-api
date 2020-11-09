class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :date
      t.string :note
      t.integer :category_id

      t.timestamps
    end
  end
end
