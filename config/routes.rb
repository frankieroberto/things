Whatisthis::Application.routes.draw do
  resources :type_of_things

  resources :things

  root :to => "homepage#show"

end
