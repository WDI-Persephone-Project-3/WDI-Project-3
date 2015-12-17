# == Route Map
#
#                Prefix Verb   URI Pattern                                       Controller#Action
#                  root GET    /                                                 sessions#new
#                 login POST   /login(.:format)                                  sessions#create
#                logout DELETE /logout(.:format)                                 sessions#destroy
#                signup GET    /signup(.:format)                                 sessions#new_user
#                       POST   /signup(.:format)                                 sessions#create_user
#      instructors_dash GET    /instructors/dash(.:format)                       instructors#dash
#         students_dash GET    /students/dash(.:format)                          students#dash
#    instructor_cohorts GET    /instructors/:instructor_id/cohorts(.:format)     cohorts#index
#                       POST   /instructors/:instructor_id/cohorts(.:format)     cohorts#create
# new_instructor_cohort GET    /instructors/:instructor_id/cohorts/new(.:format) cohorts#new
#           edit_cohort GET    /cohorts/:id/edit(.:format)                       cohorts#edit
#                cohort GET    /cohorts/:id(.:format)                            cohorts#show
#                       PATCH  /cohorts/:id(.:format)                            cohorts#update
#                       PUT    /cohorts/:id(.:format)                            cohorts#update
#                       DELETE /cohorts/:id(.:format)                            cohorts#destroy
#       edit_instructor GET    /instructors/:id/edit(.:format)                   instructors#edit
#            instructor GET    /instructors/:id(.:format)                        instructors#show
#                       PATCH  /instructors/:id(.:format)                        instructors#update
#                       PUT    /instructors/:id(.:format)                        instructors#update
#                       DELETE /instructors/:id(.:format)                        instructors#destroy
#               quizzes GET    /quizzes(.:format)                                quizzes#index
#                       POST   /quizzes(.:format)                                quizzes#create
#              new_quiz GET    /quizzes/new(.:format)                            quizzes#new
#             edit_quiz GET    /quizzes/:id/edit(.:format)                       quizzes#edit
#                  quiz GET    /quizzes/:id(.:format)                            quizzes#show
#                       PATCH  /quizzes/:id(.:format)                            quizzes#update
#                       PUT    /quizzes/:id(.:format)                            quizzes#update
#                       DELETE /quizzes/:id(.:format)                            quizzes#destroy
#          edit_student GET    /students/:id/edit(.:format)                      students#edit
#               student GET    /students/:id(.:format)                           students#show
#                       PATCH  /students/:id(.:format)                           students#update
#                       PUT    /students/:id(.:format)                           students#update
#                       DELETE /students/:id(.:format)                           students#destroy
#

Rails.application.routes.draw do

  root 'sessions#new'

  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/signup' => 'sessions#new_user'
  post '/signup' => 'sessions#create_user'  

  get '/instructors/dash' => 'instructors#dash'
  get '/students/dash' => 'students#dash'
  post '/instructors/dash/cohort' => 'instructors#cohort'


  shallow do
    resources :instructors, only: [:show, :edit, :update, :destroy] do
      resources :cohorts
    end
  end

  resources :quizzes
  resources :students, only: [:show, :edit, :update, :destroy] 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
