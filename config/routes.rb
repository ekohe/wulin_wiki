Rails.application.routes.draw do
  namespace :wulin_wiki do
    get 'list' => 'wikis#list'
    get 'show' => 'wikis#show'
    match 'save' => 'wikis#save', via: [:post, :put]
  end
end