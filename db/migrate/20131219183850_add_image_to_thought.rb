class AddImageToThought < ActiveRecord::Migration
  def change
    add_column :thoughts, :image, :string
  end
end
