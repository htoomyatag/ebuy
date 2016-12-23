Rails.application.routes.draw do


  resources :conversations do
    resources :messages
  end

  resources :myapis
  match "product_by_category" => "myapis#product_by_category", as: :product_by_category, via: [:get, :post]
  match "product_by_id" => "myapis#product_by_id", as: :product_by_id, via: [:get, :post]
  match "all_products" => "myapis#all_products", as: :all_products, via: [:get, :post]
  match "customer_review" => "myapis#customer_review", as: :customer_review, via: [:get, :post]
  match "my_info" => "myapis#my_info", as: :my_info, via: [:get, :post]
  match "edit_my_info" => "myapis#edit_my_info", as: :edit_my_info, via: [:get, :post]
  match "my_shoppinglist" => "myapis#my_shoppinglist", as: :my_shoppinglist, via: [:get, :post]


  resources :cover_images
  scope "(:locale)", locale: /en|mm/ do
  resources :currency_exchanges
  resources :wish_lists
  resources :request_products
  get 'thanks_for_request' => 'request_products#thanks_for_request', as: 'thanks_for_request'

  devise_for :buyers, :controllers => {:sessions => "buyers/sessions", :registrations => "buyers/registrations"}
  devise_for :admins, :controllers => {:sessions => "admins/sessions", :registrations => "admins/registrations"}
  resources :admins
  get 'dashboard' => 'admins#dashboard'
  get 'buyer_list' => 'admins#buyer_list'
  get 'other_request_products' => 'admins#other_request_products'  

  resources :comments
  resources :coupons
  resources :buyers
  resources :carts


  resources :line_items
  get 'cart_item' => 'line_items#cart_item', as: 'cart_item'

  resources :orders

   match "order_complete" => "orders#order_complete", as: :order_complete, via: [:get, :post]



  resources :frontends
  



  root 'frontends#home'
 
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


  get 'product_detail_mobiview/:id'  => 'frontends#product_detail_mobiview'
  
  get 'customer_review_mobiview/:id'  => 'frontends#customer_review_mobiview'

  get 'productqanda_mobiview/:id'  => 'frontends#productqanda_mobiview'

  get 'notice_mobiview/:id'  => 'frontends#notice_mobiview'

  get 'my_wishlist'  => 'frontends#my_wishlist'

  get 'my_coupon'  => 'frontends#my_coupon'

  get 'send_to_order'  => 'frontends#send_to_order'

  get 'use_mpu' => 'frontends#use_mpu'

  get 'use_cash_deposit' => 'frontends#use_cash_deposit'

  get 'use_bank_transfer' => 'frontends#use_bank_transfer'

  get 'my_order_list' => 'frontends#my_order_list'

  get 'my_shopping_list' => 'frontends#my_shopping_list'


  get 'my_order_detail/:id' => 'frontends#my_order_detail', as: 'my_order_detail'
  

  get 'cancel_order/:id' => 'frontends#cancel_order', as: 'cancel_order'
  
  get 'my_cancel_list' => 'frontends#my_cancel_list'

  get 'my_personal_info/:id' => 'frontends#my_personal_info', as: 'my_personal_info'

  get 'product_list' => 'frontends#product_list', as: 'product_list'


  get 'pc_version' => 'frontends#pc_version', as: 'pc_version'



  get "send_to_pusher" => "frontends#send_to_pusher", :as => :send_to_pusher
  get 'chat_with' => 'frontends#chat_with', :as => :chat_with

  get 'chat_to_seller' => "frontends#chat_to_seller", :as => :chat_to_seller


  
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
  #   
      end
end
