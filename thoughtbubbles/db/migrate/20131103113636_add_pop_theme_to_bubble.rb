class AddPopThemeToBubble < ActiveRecord::Migration
  def change
    add_column :bubbles, :pop, :integer
    add_column :bubbles, :theme, :integer
  end
end
