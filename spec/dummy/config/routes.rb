Rails.application.routes.draw do
  mount Markdowner::Engine => "/markdowner"

  get "home/index"
  root to: "home#index"
end
