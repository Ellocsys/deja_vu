defmodule DejaVu.Factory do
  use ExMachina.Ecto, repo: DejaVu.Repo

  alias DejaVu.Repo.{User, Post}

  def user_factory do
    %User{
      first_name: "Jane",
      last_name: "Smith",
      age: 18,
      last_login_at: NaiveDateTime.utc_now()
    }
  end

  def post_factory do
    %Post{
      name: "Jane",
      description: "About Jane",
      full_text: "Whi is Jane?",
      user: build(:user)
    }
  end
end
