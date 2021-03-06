Rails.application.routes.draw do

    devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'welcome#index'
    resources :welcome do
      collection do
        get :about
      end
    end


    resources :products do
        member do
            post :add_to_cart
        end
        collection do
            get :search
            get :surprise
        end
        resources :comments
    end

    resources :carts do
        collection do
            delete :clean
            post :checkout
        end
    end

    resources :cart_items

    namespace :admin do
        resources :products
        resources :locations
        resources :orders do
            member do
                post :cancel
                post :ship
                post :shipped
                post :return
            end
        end
    end

    resources :orders do
        member do
            post :pay_with_alipay
            post :pay_with_wechat
            post :apply_to_cancel
        end
    end

    namespace :account do
        resources :orders
    end
end
