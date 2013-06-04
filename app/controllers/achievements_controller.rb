class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all
  end

  def show
    @achievement = Achievement.find(params[:id])
    @picture = @achievement.pictures.build
  end

  def create
    @achievement = Achievement.new(params[:achievement])
    
    respond_to do |format|
      if @achievement.save!
        current_user.score += @achievement.points
        current_user.save!
        format.html  { redirect_to(achievement_path(@achievement),
                      :notice => 'achievement was successfully created.') }
        format.json  { render :json => @achievement,
                      :status => :created, :location => @achievement }
      else
        format.html  { render :action => "show" }
        format.json  { render :json => @achievement.errors,
                      :status => :unprocessable_entity }
      end
    end
  end
  def update
    @achievement = Achievement.find(params[:id])

    respond_to do |format|
      if @achievement.update_attributes(params[:achievement])
        current_user.score += @achievement.points
        current_user.save!
        format.html  { redirect_to(achievement_path(@achievement),
                      :notice => 'achievement was successfully created.') }
        format.json  { render :json => @achievement,
                      :status => :created, :location => @achievement }
      else
        format.html  { render :action => "show" }
        format.json  { render :json => @achievement.errors,
                      :status => :unprocessable_entity }
      end
    end
  end
end
