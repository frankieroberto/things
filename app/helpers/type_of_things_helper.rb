module TypeOfThingsHelper

  def type_path(type_of_thing, options = {})
    url_for(options.merge(:controller => :types_of_thing, :action => :show, :id => type_of_thing.name))        
  end

end
