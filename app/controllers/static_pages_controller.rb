class StaticPagesController < ApplicationController
  def home
  	respond_to do |format|
  		format.html 
  		format.js 
  	end
  end

  def tournaments
  	@tournaments = Tournament.all
  	respond_to do |format|
  		format.js
  	end
  end

  def users
  	@users = User.all
  	respond_to do |format|
  		format.js
  	end
  end

  def current_roster
  	@users = User.all
    respond_to do |format|
      format.js
     end
  end

  def gears
  	@gears = Gear.all
  	respond_to do |format|
  		format.js
  	end
  end


  def contact
  end

  def about
  end
end
