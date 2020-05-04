defmodule DejaVu.Repo.Post do
  use Ecto.Schema

  alias DejaVu.Repo.User

  schema "posts" do
    belongs_to :user, User

    field :name, :string
    field :description, :string
    field :full_text, :string


    timestamps()
  end
end
