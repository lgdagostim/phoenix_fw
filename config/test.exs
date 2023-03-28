use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :phoenix_fw, PhoenixFw.Repo,
  username: System.get_env("PG_USER"),
  password: System.get_env("PG_PASSWORD"),
  database: System.get_env("PG_DB"),
  hostname: System.get_env("PG_SERVER"),
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_fw, PhoenixFwWeb.Endpoint,
  http: [port: 4002],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# config wallaby
config :wallaby,
  driver: Wallaby.Chrome,
  otp_app: :phoenix_fw,
  chromedriver: [
    headless: false
  ]

config :phoenix_fw, :sandbox, Ecto.Adapters.SQL.Sandbox
