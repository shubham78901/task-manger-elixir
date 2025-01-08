defmodule TaskManagerWeb.TaskController do
  use TaskManagerWeb, :controller

  def index(conn, _params) do
    tasks = [
      %{"id" => 1, "name" => "Learn Rust"},
      %{"id" => 2, "name" => "Learn Elixir"},
      %{"id" => 3, "name" => "Build a React app"}
    ]
    json(conn, tasks)
  end

  def create(conn, %{"task" => task_params}) do
    task = %{"id" => 4, "name" => task_params["name"]}
    json(conn, task)
  end

  def delete(conn, %{"id" => id}) do
    json(conn, %{"message" => "Task with ID #{id} deleted"})
  end
end
