# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_fw,
  ecto_repos: [PhoenixFw.Repo]

# Configures the endpoint
config :phoenix_fw, PhoenixFwWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nYHr9tTz4X20Tsd1k8EKrU1Xe/5clhcKuX0FE3KB3B7Rf+FFHc7jPF0yvmWJbvFL",
  render_errors: [view: PhoenixFwWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixFw.PubSub,
  live_view: [signing_salt: "3a+cKoKt"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
