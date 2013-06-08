class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => :show
  def index
    @home_page  = true
  end

  def show
    
  end
end
