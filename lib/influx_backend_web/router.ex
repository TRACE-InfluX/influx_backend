defmodule InfluxBackendWeb.Router do
  use InfluxBackendWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  get "/", InfluxBackendWeb.HomeController, :index

  scope "/v0", InfluxBackendWeb do
    pipe_through :api
    resources "/accounts", AccountController
    resources "/influencers", InfluencerController
  end
end
