Rails.application.routes.draw do
  root to: 'task#index'
  put 'task/done/:id' => 'task#done', :as => 'done_task'
  post 'task/create' => 'task#create'
end
