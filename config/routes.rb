Rails.application.routes.draw do

  devise_for :users
  root 'wines#index'

  # Routes for the Wine resource:
  # CREATE
  get "/wines/new", :controller => "wines", :action => "new"
  post "/create_wine", :controller => "wines", :action => "create"

  # READ
  get "/wines", :controller => "wines", :action => "index"
  get "/wines/:id", :controller => "wines", :action => "show"

  # UPDATE
  get "/wines/:id/edit", :controller => "wines", :action => "edit"
  post "/update_wine/:id", :controller => "wines", :action => "update"

  # DELETE
  get "/delete_wine/:id", :controller => "wines", :action => "destroy"
  #------------------------------

  # Routes for the Red Wine resource:
  # CREATE
  get "/reds/new", :controller => "reds", :action => "new"
  post "/create_red", :controller => "reds", :action => "create"

  # READ
  get "/reds", :controller => "reds", :action => "index"
  get "/reds/:id", :controller => "reds", :action => "show"

  # UPDATE
  get "/reds/:id/edit", :controller => "reds", :action => "edit"
  post "/update_red/:id", :controller => "reds", :action => "update"

  # DELETE
  get "/delete_red/:id", :controller => "reds", :action => "destroy"

    # Routes for the White Wine resource:
  # CREATE
  get "/whites/new", :controller => "whites", :action => "new"
  post "/create_white", :controller => "whites", :action => "create"

  # READ
  get "/whites", :controller => "whites", :action => "index"
  get "/whites/:id", :controller => "whites", :action => "show"

  # UPDATE
  get "/whites/:id/edit", :controller => "whites", :action => "edit"
  post "/update_white/:id", :controller => "whites", :action => "update"

  # DELETE
  get "/delete_white/:id", :controller => "whites", :action => "destroy"
  #------------------------------

    # Routes for the Wine resource:
  # CREATE
  get "/roses/new", :controller => "roses", :action => "new"
  post "/create_rose", :controller => "roses", :action => "create"

  # READ
  get "/roses", :controller => "roses", :action => "index"
  get "/roses/:id", :controller => "roses", :action => "show"

  # UPDATE
  get "/roses/:id/edit", :controller => "roses", :action => "edit"
  post "/update_rose/:id", :controller => "roses", :action => "update"

  # DELETE
  get "/delete_rose/:id", :controller => "roses", :action => "destroy"
  #------------------------------

    # Routes for the Wine resource:
  # CREATE
  get "/bubbly/new", :controller => "bubbly", :action => "new"
  post "/create_bubbly", :controller => "bubbly", :action => "create"

  # READ
  get "/bubbly", :controller => "bubbly", :action => "index"
  get "/bubbly/:id", :controller => "bubbly", :action => "show"

  # UPDATE
  get "/bubbly/:id/edit", :controller => "bubbly", :action => "edit"
  post "/update_bubbly/:id", :controller => "bubbly", :action => "update"

  # DELETE
  get "/delete_bubbly/:id", :controller => "bubbly", :action => "destroy"
  #------------------------------

  
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
