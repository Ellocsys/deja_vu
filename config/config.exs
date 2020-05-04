import Config

config :deja_vu,
  ecto_repos: [DejaVu.Repo]

config :deja_vu, DejaVu.Repo,
  database: "deja_vu_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

  config :logger, :level, :debug

  import_config "#{Mix.env()}.exs"
