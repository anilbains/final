Rails.application.routes.draw do
  
resources :userprofiles
resources :usergroups
resources :groupmembers
resources :locations

root to: 'userprofiles#index'

end
