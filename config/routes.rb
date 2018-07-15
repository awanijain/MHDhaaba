Rails.application.routes.draw do
  get 'services' => 'home#services'

  get 'contact' => 'home#contact'

  get 'about' => 'home#about'

  get 'menu'  => 'home#menu'

  root 'welcome#homepage'

  # get "/send_mail" => "welcome#send_mail"
  # root 'welcome#new'
  # root 'welcome#create'
  resources :contacts, only: [:new, :create]
  resources :home, only: [:new, :create]
  resources :welcome, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
