defmodule DejaVu.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :name, :string
      add :description, :string
      add :full_text, :string

      add :user_id, references(:users)

      timestamps()
    end

    create index("posts", [:user_id])
  end
end
