module ApplicationHelper

  def a_or_an(name, include_name = true)
    if name[0,1] =~ /[aeiou]/
      article = "an"
    else
      article = "a"
    end
    if include_name
      article + " " + name
    else
      article
    end
  end

end
