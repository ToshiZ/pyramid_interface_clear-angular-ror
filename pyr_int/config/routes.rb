Rails.application.routes.draw do
  resources :user_tasks

  resources :templates

  # get 'ssh_actions/testConnection'

  # get 'ssh_actions/runCommand'

  # get 'ssh_actions/getInfo'

  resources :templates #, :defaults => {format: :json}

  resources :ssh_connections #, :defaults => {format: :json}

  resources :passports #, :defaults => {format: :json}
 # resources :ssh_actions
  #get 'ssh_actions/' => 'ssh_actions#testConnection'
 # get 'ssh_actions/:id' => 'ssh_actions#testConnection'
  get 'ssh_actions/:name/:password' => 'ssh_actions#testConnection'
  get 'getinf/:name/:password/:command' => 'ssh_actions#runCommand'
  get 'getOutputs/:name/:password/:task_name' => 'ssh_actions#get_outputs'
  post 'run_command/:params' => 'ssh_actions#runCommand'
  post 'dell_task/:params' => 'ssh_actions#dell_task'
  get 'getinf/:name/:password' => 'ssh_actions#getInfo'

  root to: 'application#index'

  get '*path' => 'application#index'
  # # #get 'passport/index'
  #match '/testConnection', to: 'SshConnections#testConnection', via: 'get'
 
  # match '/epk', to: 'passport#epk', via: 'post'
  # match '/rr', to: 'passport#rr', via: 'get'
  # match '/main', to: 'passport#main', via: 'get'
  # match '/main2', to: 'passport#main2', via: 'get'

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
