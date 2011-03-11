module ThingsHelper

  def name_or_title(thing)
    if !thing.name.blank?
      thing.name
    else
      thing.title
    end
  end

end
