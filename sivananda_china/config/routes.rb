SivanandaChina::Application.routes.draw do
  get "courseintro/200hour"

  get "courseintro/500hour"

  get "courseintro/breathcourse"

  get "courseintro/holidaycourse"

scope '(:locale)' do
  
  get "myapplication/myapplication"

	root to:'home#index'
	
  get "about_us/teacher"

  get "session/new"

  get "session/create"

  get "session/destroy"
  controller :session do
    get 'login' => :new
    post 'login' => :create
    delete 'logout'=>:destroy
  end

  get "home/index"

  get "language/navi"
  
  resources :applications

  resources :users
end
  
end
