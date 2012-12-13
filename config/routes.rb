PollSpark::Application.routes.draw do

    root :to => 'users#new'
	resources :users
	resources :carts
	resources :items
	resources :payments
	resources :authentications
	resources :registrations, only: [:new]
	resources :signatures
	resources :friends, only: [:create, :new, :email_share]
    resources :sessions, only: [:new, :create, :destroy]
	resources :petitions, only: [:new, :create, :show, :index, :edit, :update, :destroy]
	resources :microposts, only: [:create, :destroy]

match '/sendme', to: 'friends#sendme'
match '/checkout', to: 'carts#checkout'	
match '/nomore', to: 'carts#destroy'
match '/additem', to: 'users#add'
match '/delete', to: 'static_pages#delete'
match '/remove', to: 'users#remove'
match '/registration',  to: 'registrations#new'
match '/auth/:provider/callback',  to: 'sessions#create'
match "/auth/failure", to: "sessions#failure"
match '/done',  to: 'static_pages#finished'
match '/newitem',  to: 'items#new'
match '/home',  to: 'items#home'
match '/fitness',  to: 'items#fitness'
match '/fun',  to: 'items#fun'
match '/books',  to: 'items#book'
match '/food',  to: 'items#food'
match '/share',  to: 'friends#email_share'
match '/allpetitions',  to: 'petitions#index'
match '/tips',  to: 'static_pages#tips'
match '/newpetition',  to: 'petitions#new'
match '/signin',  to: 'sessions#new'
match '/signout', to: 'sessions#destroy', via: :delete
match '/signup', to: 'users#new'
match '/petitionnow', to: 'signatures#new'
match '/about', to: 'static_pages#about'
match '/contact', to: 'static_pages#contact'
match '/news', to: 'static_pages#news'


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


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
