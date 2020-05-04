defmodule DejaVu.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_name, :string
      add :last_name, :string
      add :age, :integer
      add :last_login_at, :naive_datetime_usec

      timestamps()
    end
  end
end
