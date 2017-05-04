# frozen_string_literal: true
Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :examples, except: [:new, :edit]
  resources :users, only: [:index, :show]
  resources :authors, only: [:index, :show]
  resources :words, except: [:new, :edit]
end
