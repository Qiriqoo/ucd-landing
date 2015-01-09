Rails.application.routes.draw do

  root 'home#index'

  resources :contacts

  get '/:id', controller: 'pdfpages', action: :show

end
