class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_stats
  
  
  def get_stats
    @things_identified_count = Thing.count(:conditions => "type_of_thing_id IS NOT NULL")       
    @thing_types = TypeOfThing.random_featured(5)
  end  
    

  def help
     Helper.instance
   end

 class Helper
   include Singleton
   include ActionView::Helpers::TextHelper
 end

end
