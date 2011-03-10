Whatisthis::Application.routes.draw do


  resources :types, :controller => :types_of_thing

  resources :things

  root :to => "homepage#show"

end
