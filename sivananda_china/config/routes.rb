SivanandaChina::Application.routes.draw do
  get "tips/tips"

  get "sivananda/aboutus"

  resources :courses

  get "courseintro/hour200"

  get "courseintro/hour500"

  get "courseintro/breathcourse"

  get "courseintro/holidaycourse"
  get "about_us/master"
  get "about_us/method"
  get "about_us/keypoint"
scope '(:locale)' do
  resources :applications
  get "myapplication/myapplication"
	controller :myapplication do
	  get 'applicate'=> :applicate
	  post 'applicate'=> :new
	end
	root to:'home#index'
	
  get "about_us/teacher"

  controller :session do
    get 'new' => :new
    post 'new' => :create
    delete 'new'=>:destroy
  end

  get "home/index"

  get "language/navi"
  
  

  resources :users
end
  
end
