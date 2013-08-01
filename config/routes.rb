Rails.application.routes.draw do
  namespace :wulin_wiki do
    get 'show' => 'wikis#show'
    get 'edit' => 'wikis#edit'
    post 'save' => 'wikis#save'
  end
end