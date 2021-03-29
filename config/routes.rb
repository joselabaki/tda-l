Rails.application.routes.draw do



  get 'stories', to: 'pages#stories'
  get 'about', to:'pages#about'
  get 'contact', to:'pages#contact'
  get 'shop', to:'pages#shop'
  get 'home', to:'pages#home'
  get 'legal', to:'pages#legal'


  resources :cocktails
  resources :products



  root 'landing#index'
  post 'emailapi/subscribe' => 'emailapi#subscribe'







end
