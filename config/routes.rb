Rails.application.routes.draw do
  
  devise_for :users, :controllers => {:registrations => "registrations"}
  root :to => 'pages#index'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'

  devise_scope :user do
      get 'signup', to: 'devise/registrations#new'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
