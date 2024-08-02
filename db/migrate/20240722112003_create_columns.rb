class CreateColumns < ActiveRecord::Migration[7.1]
  def change
    create_table :columns do |t|
      t.string :title
      t.string :color_code
      t.text :description
      t.boolean :is_static

      t.timestamps
    end
  end
end
