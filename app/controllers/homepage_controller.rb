class HomepageController < ApplicationController

  def show    
    @thing = Thing.random_with_no_type 
    @things_identified_count = Thing.count(:conditions => "type_of_thing_id IS NOT NULL")       
    @thing_types = TypeOfThing.random_featured(5)
  end
  
end
