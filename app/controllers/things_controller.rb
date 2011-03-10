class ThingsController < ApplicationController

  def update
    
    @thing = Thing.find(params[:id])
    
    if params[:commit] == "No idea"

      @thing.increment!(:no_idea_count)
      
    else

      @thing.update_attributes!(params[:thing])
    end
      
      redirect_to root_path
    
  end


end
