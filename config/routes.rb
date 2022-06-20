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
          resources :carts do
            collection do
              post :add
            end
          end
        end

      end
      get :top
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

  get "/prefecture", to: 'places#prefectures'
  get "/areas", to: 'places#areas'

end
