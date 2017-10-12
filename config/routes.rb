Rails.application.routes.draw do
  get 'home/top'
  get 'posts/index'
  get 'posts/:id' => 'posts#about'
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
