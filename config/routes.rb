Rails.application.routes.draw do
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    post '/api/v1/countries', to: 'countries#create'
    get '/api/v1/countries/:code', to: 'countries#show', constraints: { code: /[A-Za-z]{2,3}/ }
    get '/api/v1/countries', to: 'countries#index'
    delete '/api/v1/countries/:id', to: 'countries#delete'
  end
end
