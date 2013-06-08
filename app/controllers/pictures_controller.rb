class PicturesController < ApplicationController
  def show
    @picture = Picture.find(params[:id])
    @comments = @picture.comments
    @comment = @picture.comments.build
  end
  def create
    @picture = Picture.new(params[:picture])
    
    respond_to do |format|
      if @picture.save!
        format.html  { redirect_to(achievement_picture_path(@picture.achievement_id, @picture),
                      :notice => 'picture was successfully created.') }
        format.json  { render :json => @picture,
                      :status => :created, :location => @picture }
      else
        format.html  { render :action => "show" }
        format.json  { render :json => @picture.errors,
                      :status => :unprocessable_entity }
      end
    end
  end
  def update
    @picture = Picture.find(params[:id])

    respond_to do |format|
      if @picture.update_attributes(params[:picture])
        format.html  { redirect_to(achievement_picture_path(@picture.achievement_id, @picture),
                      :notice => 'picture was successfully created.') }
        format.json  { render :json => @picture,
                      :status => :created, :location => @picture }
      else
        format.html  { render :action => "show" }
        format.json  { render :json => @picture.errors,
                      :status => :unprocessable_entity }
      end
    end
  end
end
