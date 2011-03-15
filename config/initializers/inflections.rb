# Be sure to restart your server when you modify this file.

ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'type_of_thing', 'types_of_thing'
  inflect.irregular 'piece of human skin', 'pieces of human skin'
end
