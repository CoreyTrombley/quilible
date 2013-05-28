class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.date :date_of_birth
      t.string :gender

      t.timestamps
    end
  end
end
