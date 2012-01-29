class PagesController < ApplicationController
  
  def home
    @title = "Home"
  end
  
  def menu
    @title = "Menu"
  end
  
  def about
    @title = "About"
  end

end
