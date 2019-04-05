defmodule InfluxBackendWeb.Router do
  use InfluxBackendWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", InfluxBackendWeb do
    pipe_through :api
  end
end
