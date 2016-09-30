Rails.application.routes.draw do
  devise_for :admins, :controllers => {:sessions => "admins/sessions", :registrations => "admins/registrations"}
  resources :admins
  get 'dashboard' => 'admins#dashboard'

  resources :comments
  resources :coupons
  resources :buyers
  resources :carts
  resources :line_items
  resources :orders
  resources :frontends
  root 'frontends#home'
  get 'about_us' => 'frontends#about_us'
  get 'contact_us' => 'frontends#contact_us'
  get 'help' => 'frontends#help'
  get 'product_info' => 'frontends#product_info'
  get 'search_result' => 'frontends#search_result'

  
   get 'how_to_buy' => 'frontends#how_to_buy'
   get 'payment' => 'frontends#payment'
   get 'shipment_delivery'  => 'frontends#shipment_delivery'
   get 'customer_feedback'  => 'frontends#customer_feedback'


   get 'career_opportunity'  => 'frontends#career_opportunity'
   get 'termns_and_condition'  => 'frontends#termns_and_condition'
   get 'privacy_policy'  => 'frontends#privacy_policy'


  resources :products
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
