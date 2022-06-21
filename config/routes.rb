Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :posts do
    collection do
      get 'hobby'
      get 'study'
      get 'team'
    end
  end
  root to: 'pages#index'

  devise_scope :user do
  get 'login', to: 'devise/sessions#new'
 end

 devise_scope :user do
  get 'signup', to: 'devise/registrations#new'
end


end
