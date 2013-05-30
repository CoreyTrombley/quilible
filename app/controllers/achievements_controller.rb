class AchievementsController < ApplicationController
  def index
    Achievement.find_each(:batch_size => 500) do |achievement|
      @achievements = Achievement.group(achievement)
    end
  end
end
