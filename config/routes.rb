Rails.application.routes.draw do
  root 'login#index'

  resources :document

  resources :interest_profile

  # resources :login

  get 'login' => 'login#index'

  post 'login' => 'login#create'
  
  get 'logout' => 'login#logout'


  get 'search/results' => 'search#results'
  resources :search

  # get 'dataset/load'
  
  # post 'login/login', as: :login


  # get 'search' => 'search#index', as: :search

  # get 'search/cairn'

  # get 'search/text'

  # get 'search/results'

  # get 'interest_profile/:id' => 'interest_profile#show'

  # get 'interest_profile' => 'interest_profile#index'

  # post 'interest_profile/:id/edit' => 'interest_profile#edit'

  # post 'interest_profile/create' => 'interest_profile#create'

  # get 'document/:id' => 'document#show'

  # get 'document' => 'document#index'

  # post 'document/:id/edit' => 'document#edit', as: :edit

  # post 'document/create' => 'document#create'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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
