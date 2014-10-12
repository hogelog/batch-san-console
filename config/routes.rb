Rails.application.routes.draw do
  root "root#root"

  resources :job_recipes do
    member do
      post :launch
    end
  end
end
