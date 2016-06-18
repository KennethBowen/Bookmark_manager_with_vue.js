Rails.application.routes.draw do
  resources :bookmarks
  #visit_path(slug)
  get "/:slug" => "visit#index", as: :visit
   root 'bookmarks#index'

end
