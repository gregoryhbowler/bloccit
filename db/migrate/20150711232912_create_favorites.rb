class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :rails
      t.string :g
      t.string :model
      t.string :favorite
      t.references :post, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
