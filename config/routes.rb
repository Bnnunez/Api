Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts,except: 'update', path: 'news' do
    put '', to: 'posts#replace'
    patch '', to: 'posts#update'
    resources :comments,except: 'update' do
      put '', to: 'comments#replace'
      patch '', to: 'comments#update'
    end
  end
end
