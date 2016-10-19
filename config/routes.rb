Rails.application.routes.draw do
  devise_for :directors
  # Routes for the Director resource:
  # READ
  get "/directors", :controller => "directors", :action => "index"
  get "/directors/:id", :controller => "directors", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
