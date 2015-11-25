class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :user, index: true, foreign_key: true
      t.string :image
      t.string :caption

      t.timestamps null: false
    end
  end
end