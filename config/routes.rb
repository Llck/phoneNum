Rails.application.routes.draw do

  root 'mobs#index'

resources :mobs
end
