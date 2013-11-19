MagneticPoetry::Application.routes.draw do
  root to: 'poems#new'
  resources :poems, :only => [:new, :create, :show, :update]
end
