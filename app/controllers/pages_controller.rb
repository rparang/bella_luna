class PagesController < ApplicationController
  
  def home
    @title = "Home"
  end
  
  def menus
    @title = "Menu"
  end
  
  def location
    @title = "Location"
  end
  
  def about
    @title = "About"
  end

end
