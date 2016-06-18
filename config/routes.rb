Rails.application.routes.draw do
  resources :bookmarks

  #visit_path(slug)
  get "/:slug" => "visit#index", as: :visit
  #constraint allows for a string with any value
  get "/crawl/:url" => "crawl#index", as: :crawl, contraints: { url: /.*/}

  root 'bookmarks#index'

end
