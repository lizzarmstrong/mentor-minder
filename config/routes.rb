Mentorminder::Application.routes.draw do

  
  devise_for :users,
              controllers: {registrations: "my_devise/registrations"}
  as :user do
    get 'users/edit' => 'my_devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'my_devise/registrations#update', :as => 'user_registration'
  end

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    get '/profile/edit', to: 'dashboard#user_profile_edit'
    put 'profile/edit', to: 'dashboard#user_profile_update'
    resources :users

  end

  resources :events do
    collection do
      match 'search' => 'events#index', :via => [:get, :post], :as => :search
    end
  end

  resources :mentors do 
    collection do
      match 'search' => 'mentors#index', :via => [:get, :post], :as => :search
    end
  end

  resources :mentor_regs do
    member do
      post :process_reg
    end
    collection do
      get :thanks
    end
  end

  #post 'mentor_regs/:id', to: 'mentor_regs#process_reg' 

  # resources :mentor_regs do
  #   member do
  #     post 'process'
  #   end
  # end
  # link_to process_mentor_reg_path(mentor_reg), method: :post

  root 'home#index'

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
