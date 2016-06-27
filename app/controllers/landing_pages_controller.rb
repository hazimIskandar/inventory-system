class LandingPagesController < ApplicationController
  def home
  	@perniagaan = Perniagaan.all
  end
  def index
  	
  end

end
