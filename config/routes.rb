Rails.application.routes.draw do

  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"

  resources :blogs
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "welcome/index"
  post "welcome/trigger_job"
  get "other/job_done"
  root to: "welcome#index"


  # Defines the root path route ("/")
  # root "articles#index"
end


