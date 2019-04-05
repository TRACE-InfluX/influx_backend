defmodule InfluxBackendWeb.Router do
  use InfluxBackendWeb, :router

  pipeline :api do
    plug CORSPlug, origin: "*"
    plug :accepts, ["json"]
  end

  scope "/v0", InfluxBackendWeb do
    pipe_through :api
    resources "/accounts", AccountController
    resources "/influencers", InfluencerController
  end
end
