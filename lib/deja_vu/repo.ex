defmodule DejaVu.Repo do
  use Ecto.Repo,
    otp_app: :deja_vu,
    adapter: Ecto.Adapters.Postgres
end
