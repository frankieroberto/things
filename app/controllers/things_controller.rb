
class ThingsController < ApplicationController

  def update
    
    @thing = Thing.find(params[:id])
    
    if params[:commit] == "No idea"

      @thing.increment!(:no_idea_count)
      
    else

      thing_type_name = params[:thing][:type_of_thing_name].downcase.gsub(".","")

      @thing.type_of_thing_name = thing_type_name
      @thing.reload
      @things_count = @thing.type_of_thing.things.size
      if @things_count > 1
        flash[:message] = "Thanks! There are now <strong><a href=\"#{type_path(@thing.type_of_thing)}\">#{help.pluralize(@things_count, @thing.type_of_thing.name)}</a></strong> identified.".html_safe
        
      else  
        flash[:message] = "Thanks! That's the first <strong><a href=\"#{type_path(@thing.type_of_thing)}\">#{@thing.type_of_thing.name}</a></strong> identified.".html_safe
      end
    end
      
      redirect_to root_path
    
  end
  
  def show
    @thing = Thing.find(params[:id])
  end


end
