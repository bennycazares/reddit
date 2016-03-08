Rails.application.routes.draw do
  root 'posts#index'


  get 'posts/new' => 'posts#new', as: :new_post
  post 'posts/:id/upvote' => 'posts#upvote', as: :upvote_post
  post'posts/:id/downvote' => 'posts#downvote', as: :downvote_post
  get 'posts/:id' => 'posts#detail', as: :detail_post
  post 'posts/:id' => 'posts#detail', as: :details_post
  get 'posts/:id/edit' => 'posts#edit', as: :edit_post
  post 'posts' => 'posts#create'
  patch 'posts/:id' => 'posts#update'
  delete 'posts/:id' => 'posts#delete'
  post 'posts/:id/comments' => 'posts#create_comment', as: :comments


end
