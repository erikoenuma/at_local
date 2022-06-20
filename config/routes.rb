Rails.application.routes.draw do
  root 'sessions#new'

  resources :shops do
    member do
      resources :items, param: :item_id do

        collection do
          get :stock
          put :update_stock
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
      delete '/destroy_item/:item_id', to: 'carts#destroy_item', as: :destroy_item
    end
  end

  resources :orders, except:[:new]
  
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

  get "/prefecture", to: 'places#prefectures'
  get "/areas", to: 'places#areas'

end
