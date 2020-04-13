Rails.application.routes.draw do
  root 'demo#index'
  
  get 'demo/index'
  get 'demo/hello'

end
