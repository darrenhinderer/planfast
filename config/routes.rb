ActionController::Routing::Routes.draw do |map|

  map.resources :players

  map.root :controller => "players"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
