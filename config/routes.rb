Rails.application.routes.draw do
  get 'stories', to: 'pages#stories'
  get 'about', to:'pages#about'
  get 'cocktails', to:'pages#cocktails'
  get 'contact', to:'pages#contact'
  get 'shop', to:'pages#shop'
  get 'home', to:'pages#home'






  root 'landing#index'
  post 'emailapi/subscribe' => 'emailapi#subscribe'







end
