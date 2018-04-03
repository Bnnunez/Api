Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, path: 'news' do
    put 'news/:id', to: 'post#replace'
    resources :comments do
      put 'comments/:id', to: 'comments#replace'
    end
  end
end
