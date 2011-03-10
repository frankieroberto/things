module HomepageHelper


  def type_of_things_links(thing_types)
    links = []
    
    thing_types.each do |thing_type|
      links << link_to(pluralize(thing_type.things.size, thing_type.name), type_path(thing_type))
    end
    
    links.to_sentence.html_safe
    
  end

end
