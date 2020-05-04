defmodule DejaVU.Cacher.Adapter do
  use Ecto.Adapters.SQL,
    driver: :postgrex,
    migration_lock: "FOR UPDATE"
end
