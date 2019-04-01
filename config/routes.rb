Rails.application.routes.draw do
  
  resources :documents do 
    collection do
      post 'import'
    end
  end

  root to: redirect('/documents')
end
