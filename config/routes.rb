Rails.application.routes.draw do
  resources :currency_exchanges
  resources :wish_lists
  resources :request_products
  get 'thanks_for_request' => 'request_products#thanks_for_request', as: 'thanks_for_request'

  devise_for :buyers, :controllers => {:sessions => "buyers/sessions", :registrations => "buyers/registrations"}
  devise_for :admins, :controllers => {:sessions => "admins/sessions", :registrations => "admins/registrations"}
  resources :admins
  get 'dashboard' => 'admins#dashboard'

  resources :comments
  resources :coupons
  resources :buyers
  resources :carts


  resources :line_items
  get 'cart_item' => 'line_items#cart_item', as: 'cart_item'

  resources :orders




  resources :frontends


  scope "(:locale)", locale: /en|mm/ do
    root 'frontends#home'
  end

  match 'fill_your_order_form/:id' => 'frontends#fill_your_order_form', as: 'fill_your_order_form', via: [:get, :post]
  get 'submit_online_payment' => 'frontends#submit_online_payment', as: 'submit_online_payment', via: [:get, :post]


  get 'order_form' => 'frontends#order_form', as: 'order_form'
  get 'about_us' => 'frontends#about_us'
  get 'contact_us' => 'frontends#contact_us'
  get 'help' => 'frontends#help'
  get 'product_info/:id' => 'frontends#product_info', as: 'product_info'
  get 'view_image/:id' => 'frontends#view_image', as: 'view_image'


  get 'search_result' => 'frontends#search_result'

  
   get 'how_to_buy' => 'frontends#how_to_buy'
   get 'payment' => 'frontends#payment'
   get 'shipment_delivery'  => 'frontends#shipment_delivery'
   get 'customer_feedback'  => 'frontends#customer_feedback'


   get 'career_opportunity'  => 'frontends#career_opportunity'
   get 'termns_and_condition'  => 'frontends#termns_and_condition'
   get 'privacy_policy'  => 'frontends#privacy_policy'

   get 'my_account'  => 'frontends#my_account'

   get 'check_out'  => 'frontends#check_out'
   
   get 'use_coupon'  => 'frontends#use_coupon'
   post 'add_to_wish_list'  => 'frontends#add_to_wish_list'



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
