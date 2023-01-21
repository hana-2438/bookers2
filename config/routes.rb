Rails.application.routes.draw do
  root to = 'homes#top'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :update, :index]
  resources :books # new,show,index,edit,create,destroy,updateアクションが格納されている
  get 'home/about' => 'homes#about', as: 'about'
end
