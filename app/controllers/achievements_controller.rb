class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all
  end
end
