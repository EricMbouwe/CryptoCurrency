Rails.application.routes.draw do
  root to: 'curencies#index'
  post 'search', to: 'curencies#search'
  post 'calculate', to: 'curencies#calculate'
end
