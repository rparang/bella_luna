class PagesController < ApplicationController
  
  def home
    twitter_user = "bellalunaknox"
    
    @title = "Home"
    
    #begin
    #  @twitter_timeline = Twitter.user_timeline(twitter_user)
    #rescue
    #end
    #make a rescue!
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
