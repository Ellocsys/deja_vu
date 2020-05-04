defmodule DejaVu.Repo.User do
  use Ecto.Schema

  schema "users" do
    field :first_name, :string
    field :last_name, :string
    field :age, :integer
    field :last_login_at, :naive_datetime_usec

    timestamps()
  end
end
