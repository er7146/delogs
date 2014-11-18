App::Application.routes.draw do

  get  "/" => "logs#root"

  resources "logs", path: "/logs", controller: "logs",
    only: [:index, :show]
  # The above resources lines expand to:
  #   get  "/logs"     => "logs#index"
  #   get  "/logs/:id" => "logs#show"

  resources "sessions", path: "/sessions", controller: "sessions",
    only: [:new, :create, :destroy]
  # The above resources lines expand to:
  #   get    "/sessions/new" => "sessions#new"
  #   post   "/sessions"     => "sessions#create"
  #   delete "/sessions"     => "sessions#destroy"

  resources "admin_logs", path: "/admin_logs", controller: "admin_logs",
    only: [:index, :new, :create, :edit, :update, :destroy]
  # The above resources lines expand to:
  #   get    "/admin_logs"          => "admin_logs#index"
  #   get    "/admin_logs/new"      => "admin_logs#new"
  #   post   "/admin_logs"          => "admin_logs#create"
  #   get    "/admin_logs/:id/edit" => "admin_logs#edit"
  #   put    "/admin_logs/:id"      => "admin_logs#update"
  #   delete "/admin_logs/:id"      => "admin_logs#destroy"

end
