Rails.application.routes.draw do
  resources :awsdes
  root "awsdes#index"
end
