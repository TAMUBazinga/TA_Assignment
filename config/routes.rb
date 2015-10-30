Rails.application.routes.draw do
  resources :users
  root 'static_pages#home'

  get ({'help' => 'static_pages#help'})

  get ({'contact' => 'static_pages#contact'})
  
  resources :students  
  get '/students/(:id)/withdraw_application' => 'students#withdraw_application', :as => :withdraw_application
  get '/students/(:id)/accept_assignment' => 'students#accept_assignment', :as => :accept_assignment
  get '/students/(:id)/reject_assignment' => 'students#reject_assignment', :as => :reject_assignment
  resources :courses

  get '/courses/(:id)/select_new_ta' => 'courses#select_new_ta', :as => :select_new_ta
  get '/courses/(:id)/assign_new_ta' => 'courses#assign_new_ta', :as => :assign_new_ta

  get '/courses/(:id)/delete_ta' => 'courses#delete_ta', :as => :delete_ta, :action => :delete_ta
  get '/courses/(:id)/email_ta_notification' => 'courses#email_ta_notification', :as => :email_ta_notification, :action => :email_ta_notification
  get '/courses/(:id)/confirm_ta' => 'courses#confirm_ta', :as => :confirm_ta, :action => :confirm_ta

  #root :to => redirect('/students')
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


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
