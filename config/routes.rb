Rails.application.routes.draw do
  get 'services' => 'home#services'

  get 'contact' => 'home#contact'

  get 'contact_me' => 'mailers#contact_me'

  get 'about' => 'home#about'

  get 'menu'  => 'home#menu'

  root 'welcome#homepage'

  get "/send_mail" => "welcome#send_mail"
  root 'welcome#new'
  root 'welcome#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
