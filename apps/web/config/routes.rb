get '/books', to: 'books#create'
get '/books/new', to: 'book#new'
get '/books', to: 'books#index'
# Configure your routes here
# See: http://www.rubydoc.info/gems/lotus-router/#Usage
get '/', to: 'home#index'