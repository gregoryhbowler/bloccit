class AddRankToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :rank, :string
    add_column :posts, :float, :string
  end
end
