class AddAchievementIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :achievement_id, :integer
  end
end
