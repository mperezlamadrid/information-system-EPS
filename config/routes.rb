Rails.application.routes.draw do
  resources :hora_habils

  resources :minutos_habiles

  resources :dia_habils

  resources :usuarios

  resources :specialities

  resources :convenios

  resources :servicios

  resources :pacientes

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  resources :administracion, only: :index
  resources :dashboard , only: [:index] do
    collection do
      get :fields_user
      get :add_fields_user
    end
  end
  resources :atencion, only: :index
  resources :historial_clinico, only: :index
  resources :siau, only: :index
  resources :enfermeria, only: :index
  resources :medico_general, only: :index
  resources :medico_especialista, only: :index
  resources :admin_system, only: :index
  resources :recepcion, only: :index
  resources :super_user, only: :index

  get '/acerca-de-nosotros' => 'home#about_us', as: :about_us
  get '/soluciones' => 'home#solutions', as: :solutions
  get '/crear-usuario' => 'home#create_user', as: :create_user
  get '/usuario-admin' => 'home#check_user_admin', as: :check_user_admin
  get '/show_specialities' => 'home#show_specialities', as: :show_specialities
  get '/search_user' => 'usuarios#search_user', as: :search_user

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
