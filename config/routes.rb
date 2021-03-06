Rails.application.routes.draw do
  get 'static_pages/ayuda'

  get 'static_pages/home'
  get 'static_pages/ayuda'
  get 'static_pages/acerca'
  

  resources :disfrazs

  resources :categoria

  resources :clientes

  resources :vendedors

  resources :transicion_arriendos

  resources :arriendo_estados

  resources :detalle_arriendos

  resources :arriendos

  resources :multa

  resources :nota_de_venta

  resources :detalle_devolucions

  resources :devolucions

  resources :vendedor_estados

  resources :transicion_est_vendedors

  resources :pedidos_detalles

  resources :transicion_est_pedidos

  resources :pedido_estados

  resources :pedidos

  resources :auditoria

  resources :parametro_sistemas

  resources :transicion_est_clientes

  resources :cliente_estados

  resources :transicion_est_ejemplars

  resources :ejemplar_estados

  resources :ejemplars

  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'disfrazs#index'

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
