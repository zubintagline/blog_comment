Rails.application.routes.draw do
  resources :blog_posts
  resources :comments
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
      root 'devise/sessions#new', as: :unauthenticated_root
  end
end
