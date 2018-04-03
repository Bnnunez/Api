Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts,except: 'update', path: 'news' do
    resources :comments,except: 'update'
  end
  put '/news/:id', to: 'posts#replace'
  patch '/news/:id', to: 'posts#update'
  put '/news/:post_id/comments/:id', to: 'comments#replace'
  patch '/news/:post_id/comments/:id', to: 'comments#update'
end
