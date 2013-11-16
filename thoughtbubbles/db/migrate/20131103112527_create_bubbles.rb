class CreateBubbles < ActiveRecord::Migration
  def change
    create_table :bubbles do |t|
      t.string :bubble_name
      t.text :thought
      t.string :link

      t.timestamps
    end
  end
end
