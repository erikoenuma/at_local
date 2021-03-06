Rails.application.routes.draw do
  root 'homes#home'

  resources :shops do
    member do
      resources :items, param: :item_id do

        collection do
          get :stock
          put :update_stock
          get :sale_items
          put :configure_sale_items
        end
        member do 
          post '/carts/add', to: 'carts#add'
        end

      end
      get :top
    end
  end

  resources :carts, only: [:index, :update] do
    member do
      get '/orders/new', to: 'orders#new'
      post '/orders', to: 'orders#create'
      delete '/destroy_item/:item_id', to: 'carts#destroy_item', as: :destroy_item
    end
  end

  resources :orders, except:[:new, :create] do
    member do
      get :completed
      get :reorder
      resources :messages, only: [:create]
      put :cancel
      put :finish_purchase
    end
    collection do
      get :reset_conditions
      get :today
    end
  end
  
  resources :users, except: [:index] do
    collection do
      get :new_shop
      get :new_user
      post :create_shop
    end
  end

  resources :sessions, only: [:new, :create, :destroy] do
    collection do
      get :new_shop
      post :create_shop
    end
  end

  resources :addresses, except: [:show]

  get "/prefecture", to: 'places#prefectures'
  get "/areas", to: 'places#areas'
  get "/areas/:id/search", to: 'places#search', as: :search
  get "/home", to: 'homes#home'
  get "/notifications", to: 'notifications#index'

end
