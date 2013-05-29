Fortune::Application.routes.draw do

  resources :galleries

  resources :posts do
    resources :comments
  end

  get "users/new"
  get "users/welcome"
  get "welcome/home"
  get "welcome/thank_you"
  get "welcome/register"

  get "carts/show"
  get "carts/new"



  resources :orders

  resources :cart_line_items

  resources :carts

   resources :line_items

  resources :rows

  resources :users

  # just trying the below as a solution to routing back to index after emptying row
   #resources :rows, :except => [:delete]

  #get "animal/index"




  #below chunk fr movies
  get 'admin' => 'admin#index'

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get "admin/index"

  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  get "store/index"





  get "grid/index"

  get "grid/animals"

  get "grid/colours"

  get "grid/faces"

  get "grid/places"

  get "grid/plants"

  get "grid/shapes"

  get "grid/sky"

  get "grid/texture"

   get "grid/tshirt"

  get "grid/thanks"


  resources :shapes

  resources :sessions

  match '/login' => "sessions#new", :as => "login"
  match '/logout' => "sessions#destroy", :as => "logout"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  root :to => "grid", :action => "index"
  root to: 'grid#index', as: 'grid'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
