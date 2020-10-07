Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    ## origins '*' 
    if Rails.env.production?
        origins 'https://web-todo.firebase.web.app' 
    else 
        origins 'http://localhost:3000'
    end

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
