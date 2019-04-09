defmodule InfluxBackendWeb.HomeController do
  use InfluxBackendWeb, :controller

  action_fallback InfluxBackendWeb.FallbackController

  def index(conn, _params) do
    text(conn, "Welcome to InfluX!")
  end
end
