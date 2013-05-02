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

  def contact
  end

  def about
  end
end
