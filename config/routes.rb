Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    post '/countries', to: 'countries#create'
    get '/countries/:code', to: 'countries#show', contraints: { code: /[A-Za-z]{2,3}/ }
    get '/countries', to: 'countries#index'
  end
end
