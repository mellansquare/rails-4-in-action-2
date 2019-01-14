Rails.application.routes.draw do
  namespace :admin do
    get 'users/index'
  end

  namespace :admin do
    root 'application#index'
    resources :projects, only: %i[new create destroy]
    resources :users do
      member do
        patch :archive
      end
    end
    resources :states, only: %i[index new create] do
      member do
        get :make_default
      end
    end
  end

  devise_for :users
  root 'projects#index'

  resources :projects, only: %i[index show edit update] do
    resources :tickets do
      collection do
        get :search
      end
      
      member do
        post :watch
      end
    end
  end

  resources :tickets, only: [] do
    resources :comments, only: [:create]
    resources :tags, only: [] do
      member do
        delete :remove
      end
    end
  end

  resources :attachments, only: %i[show new]
end
