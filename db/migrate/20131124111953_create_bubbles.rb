class CreateBubbles < ActiveRecord::Migration
  def change
    create_table :bubbles do |t|
      t.string :title
      t.string :category
      t.text :thought
      t.string :url

      t.timestamps
    end
  end
end
