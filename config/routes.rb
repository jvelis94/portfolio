Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :projects
  get '/components', to: 'pages#components', as: 'components'
  get '/inquiries', to: 'inquiries#new', as: 'new_inquiry'
  post '/inquiries', to: 'inquiries#create', as: 'inquiries'
end
