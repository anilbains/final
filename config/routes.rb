Rails.application.routes.draw do
  
resources :userprofiles


root to: 'userprofiles#index'

end
