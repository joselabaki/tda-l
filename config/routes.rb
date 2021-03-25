Rails.application.routes.draw do
  root 'landing#index'

  post 'emailapi/subscribe' => 'emailapi#subscribe'







end
