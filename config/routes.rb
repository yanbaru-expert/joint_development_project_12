Rails.application.routes.draw do

    resources :users

    resources :messages

end

Rails.application.routes.draw do
  resources :tasks
end
