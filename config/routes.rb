Rails.application.routes.draw do
  get '/bookmarks/:id' => 'application#show'
  get '/create_bookmark' => 'application#new'
end
