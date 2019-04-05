defmodule InfluxBackend.Repo do
  use Ecto.Repo,
    otp_app: :influx_backend,
    adapter: Ecto.Adapters.MySQL
end
