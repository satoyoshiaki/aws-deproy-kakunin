Rails.application.routes.draw do
  resources :awsdes
  root "awsdes#index"
  #rootの作成
end
