class CreateToDos < ActiveRecord::Migration[5.0]
  def change
    create_table :to_dos do |t|
      t.string :title
      t.string :description
      t.integer :state
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
