class RemoveDescriptionFromCards < ActiveRecord::Migration[7.1]
  def change
    remove_column :cards, :description, :text
  end
end
