class CreateUserAssigns < ActiveRecord::Migration[7.1]
  def change
    create_table :user_assigns do |t|
      t.references :user, null: false, foreign_key: true
      t.references :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
