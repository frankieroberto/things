class HomepageController < ApplicationController

  def show
    @thing = Thing.random_with_no_type        
  end
  
end
