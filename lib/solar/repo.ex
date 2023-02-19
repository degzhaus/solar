defmodule Solar.Repo do
  use Ecto.Repo,
    otp_app: :solar,
    adapter: Ecto.Adapters.Postgres
end
