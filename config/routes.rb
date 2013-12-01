FlatironAlumniApp::Application.routes.draw do

get 'users/sign_out'=> 'sessions#destroy', as: :logitout

post 'users/:id/edit' => 'users#update'
get 'users/:id/edit/remove' => 'users#image_reset', as: :reset_image
  get "searches/new"
  get "searches/create"
  get "searches/show"
  
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks", :registrations => "registrations"} do

    get 'users/sign_out'=>'devise/sessions#destroy'

  end



  resources :users, :searches

  resources :forums
  resources :replies
  resources :jobs

  resources :projects

  get "pages/dashboard"
  get "pages/search"
  get "pages/calendar"

  get'alumni'=>'users#alumni'

  get "projects/:id/add_contributor" => "projects#add_contributor"

  get "users/name_search" => "users#name_search"

  # resources :sessions
  
  root 'pages#welcome'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  get '/employer_dash' => 'employer#index', as: :employer

  get '/employer/:id/edit' => 'employer#edit', as: :edit_employer_profile
  patch '/employer/:id/edit' => 'employer#updy', as: :updy_emp

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
