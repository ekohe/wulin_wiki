Rails.application.routes.draw do
  namespace :wulin_wiki do
    get 'show' => 'wikis#show'
    match 'save' => 'wikis#save', via: [:post, :put, :patch]
    resources :wikis
  end
end
