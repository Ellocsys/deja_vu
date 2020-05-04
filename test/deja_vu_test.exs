defmodule DejaVuTest do
  use ExUnit.Case

  import DejaVu.Factory

  alias DejaVu.Repo
  setup do
    # Explicitly get a connection before each test
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)

    Ecto.Adapters.SQL.Sandbox.mode(Repo, {:shared, self()})

    :ok
  end

  test "simple insert and get" do
    post = insert(:post)

    __ENV__ |> IO.inspect()
    Repo.get(Repo.Post, post.id) |> Map.get(:__meta__) |> IO.inspect()

    assert false
  end
end
