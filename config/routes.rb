Rails.application.routes.draw do

  devise_for :users
  devise_for :salon_owners
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/explorer"
  end

  resources :salons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'explorer', to: 'explorer#index'

  root 'salons#index'
end
