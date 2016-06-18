Rails.application.routes.draw do
  resources :bookmarks

  #visit_path(slug)
  get "/:slug" => "visit#index", as: :visit
  get "/crawl/:url" => "crawl#index", as: :crawl
  
  root 'bookmarks#index'

end
