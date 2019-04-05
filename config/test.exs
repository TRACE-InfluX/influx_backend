use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :influx_backend, InfluxBackendWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :influx_backend, InfluxBackend.Repo,
  username: "root",
  password: "",
  database: "influx_backend_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
