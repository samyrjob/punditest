Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => "registrations" }, :path => "users", :path_names => {:sign_up => "register"}
  devise_scope :user do
    post "/users/student" =>"registrations#student"
    post "/users/company" =>"registrations#company"
  end

  root to: "pages#home"

  resources :posts, only: [:index, :new, :create, :show] do
    resources :comments, only: [:new, :create]
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
