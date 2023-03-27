defmodule PhoenixFw.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_fw,
    adapter: Ecto.Adapters.Postgres
end
