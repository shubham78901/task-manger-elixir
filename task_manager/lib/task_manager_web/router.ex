defmodule TaskManagerWeb.Router do
  use TaskManagerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TaskManagerWeb do
    pipe_through :api

    resources "/tasks", TaskController, only: [:index, :create, :delete]
  end
end
