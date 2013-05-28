class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      t.string :title
      t.integer :user_id
      t.integer :achievement_id

      t.timestamps
    end
  end
end
