BellaLuna::Application.routes.draw do
 
  resources :menus

  root :to => 'pages#home'
 
  #get "pages/home"
  match '/about',   :to => 'pages#about'
  match '/location',:to => 'pages#location'
  #match '/menu',    :to => 'pages#menu'

end
