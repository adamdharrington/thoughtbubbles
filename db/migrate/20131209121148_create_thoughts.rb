class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.string :email
      t.string :url
      t.text :thought
      t.integer :sharecount

      t.timestamps
    end
  end
end
